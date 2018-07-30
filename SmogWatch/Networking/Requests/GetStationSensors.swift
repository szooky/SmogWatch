//
//  GetStationSensors.swift
//  SmogWatch
//
//  Created by Filip Szukala on 30/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct GetStationSensors: Request {
    typealias Response = [Sensor]
    var resourcePath: String { return "station/sensors/\(stationId)" }
    var stationId: Int

    init(stationId: Int) {
        self.stationId = stationId
    }
}
