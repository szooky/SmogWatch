//
//  MapView.swift
//  SmogWatch
//
//  Created by Filip Szukala on 06/11/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit
import MapKit
import SnapKit

class SmogMapView: UIView {
    let mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.setUserTrackingMode(.follow, animated: true)
        mapView.showsUserLocation = true
        mapView.showsBuildings = true
        return mapView
    }()

    func setupView() {
        addSubview(mapView)
        mapView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    func load(stations: [StationAnntotation]) {
        mapView.addAnnotations(stations)
        mapView.showAnnotations(stations, animated: true)
    }
}
