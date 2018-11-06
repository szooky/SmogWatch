//
//  NearestStationManager.swift
//  SmogWatch
//
//  Created by Filip Szukala on 05/11/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit
import CoreLocation

class LocationManager {
    static var shared = LocationManager()
    private let locationManager = CLLocationManager()

    init() {
        locationManager.delegate = self
    }

    private func requestLocationAuthorization(on viewController: UIViewController) {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            locationManager.requestAlwaysAuthorization()
        case .denied, .restricted:
            showLocationPreviouslyDeniedAlert(on: viewController)
        default:
            return
        }
    }

    private func showLocationPreviouslyDeniedAlert(on viewController: UIViewController) {
        let title = "Brak zgody na lokalizację użytkownika"
        let message = "Nie zezwoliłeś wcześniej na dostęp do lokalizacji, by to zmienić przejdź do ustawień i zezwól aplikacji na korzystanie z lokalizacji użytkownika"
        let alertController = UIAlertController (title: title, message: message, preferredStyle: .alert)

        let settingsAction = UIAlertAction(title: "Przejdź do ustawień", style: .default) { _ in
            guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else { return }

            if UIApplication.shared.canOpenURL(settingsUrl) {
                UIApplication.shared.open(settingsUrl, completionHandler: nil)
            }
        }
        alertController.addAction(settingsAction)
        let cancelAction = UIAlertAction(title: "Anuluj", style: .default) { _ in
        }
        alertController.addAction(cancelAction)

        viewController.present(alertController, animated: true, completion: nil)
    }

    func getNearestStationIndex() -> Int? {
        DataFlowManager.shared.fetchStations()
        guard let stations = Database.shared.getAllStations() else { return nil }
        let currentLocation = locationManager



        let currentLocation = mapView.userLocation.location!

        let nearestPin: MKAnnotation? = pins.reduce((CLLocationDistanceMax, nil)) { (nearest, pin) in
            let coord = pin.coordinate
            let loc = CLLocation(latitude: coord.latitude, longitude: coord.longitude)
            let distance = currentLocation.distanceFromLocation(loc)
            return distance < nearest.0 ? (distance, pin) : nearest
            }.1




        return 92
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("user changed location")
    }
}
