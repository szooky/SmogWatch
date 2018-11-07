//
//  MapViewController.swift
//  SmogWatch
//
//  Created by Filip Szukala on 25/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit
import MapKit

class SmogMapViewController: UIViewController {
    let mainView = SmogMapView()
    let viewModel = SmogMapViewModel()
    private var stations = [Station]() {
        didSet {
            DispatchQueue.main.async {
                self.mainView.load(stations: self.stations.map { $0.mapAnnotation })
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        if let fetchedStations = Database.shared.getAllStations() {
            stations = fetchedStations
        }

    }

    private func setupView() {
        view = mainView
        mainView.setupView()
        mainView.mapView.delegate = self
        mainView.mapView.register(StationPinView.self, forAnnotationViewWithReuseIdentifier: StationPinView.identifier)
        mainView.mapView.register(StationPinClusterView.self, forAnnotationViewWithReuseIdentifier: StationPinClusterView.identifier)
    }
}

extension SmogMapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let marker = annotation as? StationAnntotation {
            var view = mapView.dequeueReusableAnnotationView(withIdentifier: StationPinView.identifier) as? StationPinView
            if view == nil {
                view = StationPinView(annotation: marker, reuseIdentifier: StationPinView.identifier)
            }
            return view
        } else if let cluster = annotation as? MKClusterAnnotation {
            var view = mapView.dequeueReusableAnnotationView(withIdentifier: StationPinClusterView.identifier) as? StationPinClusterView
            if view == nil {
                view = StationPinClusterView(annotation: cluster, reuseIdentifier: StationPinClusterView.identifier)
            }
            return view
        }

        return nil
    }

    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {

    }

    func mapView(_ mapView: MKMapView, didChange mode: MKUserTrackingMode, animated: Bool) {
        if mode != .none {
            LocationManager.shared.showLocationPreviouslyDeniedAlert(on: self)
        }
    }
}

