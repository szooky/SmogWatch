//
//  DataFlowManager.swift
//  SmogWatch
//
//  Created by Filip Szukala on 05/11/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit

class DataFlowManager {
    static var shared = DataFlowManager()

    func fetchSmogDataFromNearestStation(withLocationAuthorizationRequestOnViewController viewController: UIViewController? = nil) {
        guard let nearestStationId = LocationManager.shared.getNearestStationIndex(withLocationAuthorizationRequestOnViewController: viewController) else { return }
        fetchSmogData(for: nearestStationId)
    }

    private func fetchSmogData(for stationId: Int) {
        print("🚀 fetching SmogData for stationId:\(stationId)")

        SmogAPI().send(GetStationData(stationId: stationId)) { response in
            switch response {
            case .success(let sensors):
                dump(sensors)
            case .failure(let error):
                print(error)
            }
        }
    }

    func fetchStations() {
        print("🚀 fetching all stations")

        SmogAPI().send(GetStations()) { response in
            switch response {
            case .success(let stations):
                dump(stations)
            case .failure(let error):
                print(error)
            }
        }
    }

    func fetchAirQualityIndex(for stationId: Int) {
        print("🚀 fetching AirQualityIndex for stationId:\(stationId)")

        SmogAPI().send(GetStationAirQuality(stationId: stationId)) { response in
            switch response {
            case .success(let airQuality):
                dump(airQuality)
            case .failure(let error):
                print(error)
            }
        }
    }

    func fetchSensors(for stationId: Int) {
        print("🚀 fetching Sensors for stationId:\(stationId)")

        SmogAPI().send(GetStationSensors(stationId: stationId)) { response in
            switch response {
            case .success(let sensors):
                dump(sensors)
            case .failure(let error):
                print(error)
            }
        }
    }
}
