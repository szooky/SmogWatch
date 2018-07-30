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
    }

    private func loadStations() {
        SmogAPI().send(GetStations()) { response in
            print("GetStations finished:")

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
            print("GetStationAirQuality finished:")

            switch response {
            case .success(let airQuality):
                print(airQuality)
            case .failure(let error):
                print(error)
            }
        }
    }
}

