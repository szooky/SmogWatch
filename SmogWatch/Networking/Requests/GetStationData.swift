//
//  GetStationData.swift
//  SmogWatch
//
//  Created by Filip Szukala on 30/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct GetStationData: Request {
    typealias Response = CodableSensorData
    var resourcePath: String { return "data/getData/\(stationId)" }
    var stationId: Int

    init(stationId: Int) {
        self.stationId = stationId
    }
}
