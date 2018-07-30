//
//  Sensor.swift
//  SmogWatch
//
//  Created by Filip Szukala on 30/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct Sensor: Decodable {
    let id: Int?
    let stationId: Int?
    let parameters: SensorParameters?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case stationId = "stationId"
        case parameters = "param"
    }
}


