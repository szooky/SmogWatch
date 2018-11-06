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

    func fetchSmogDataFromNearestStation() {
        let nearestStationId = LocationManager.shared.getNearestStationIndex()

        SmogAPI().send(GetStationData(stationId: nearestStationId)) { response in

            switch response {
            case .success(let sensors):
                dump(sensors)
            case .failure(let error):
                print(error)
            }
        }
    }

    func fetchStations() {
        SmogAPI().send(GetStations()) { response in
            print("\nGetStations finished:")

            switch response {
            case .success(let stations):
                dump(stations)
            case .failure(let error):
                print(error)
            }
        }
    }
}
