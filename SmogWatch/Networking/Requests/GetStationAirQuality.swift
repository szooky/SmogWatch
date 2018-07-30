//
//  GetStationAirQualityIndex.swift
//  SmogWatch
//
//  Created by Filip Szukala on 30/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct GetStationAirQuality: Request {
    typealias Response = AirQuality
    var resourcePath: String { return "aqindex/getIndex/\(stationId)" }
    var stationId: Int

    init(stationId: Int) {
        self.stationId = stationId
    }
}
