//
//  CodableSensor.swift
//  SmogWatch
//
//  Created by Filip Szukala on 22/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct CodableSensor: Decodable {
    let id: Int?
    let stationId: Int?
    let parameters: CodableSensorParameters?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case stationId = "stationId"
        case parameters = "param"
    }
}
