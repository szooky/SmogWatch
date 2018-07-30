//
//  ViewController.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        loadStations()
        loadAirQualityIndex(for: 400)
        loadSensors(for: 400)
    }

    private func loadStations() {
        SmogAPI().send(GetStations()) { response in
            print("\nGetStations finished:")

            switch response {
            case .success(let stations):
                print(stations)
            case .failure(let error):
                print(error)
            }
        }
    }

    private func loadAirQualityIndex(for stationId: Int) {
        SmogAPI().send(GetStationAirQuality(stationId: stationId)) { response in
            print("\nGetStationAirQuality finished:")

            switch response {
            case .success(let airQuality):
                print(airQuality)
            case .failure(let error):
                print(error)
            }
        }
    }

    private func loadSensors(for stationId: Int) {
        SmogAPI().send(GetStationSensors(stationId: stationId)) { response in
            print("\nGetStationSensors finished:")

            switch response {
            case .success(let sensors):
                print(sensors)
            case .failure(let error):
                print(error)
            }
        }
    }
}

