//
//  SensorData.swift
//  SmogWatch
//
//  Created by Filip Szukala on 30/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct SensorData: Decodable {
    let key: String?
    let parametersData: [ParameterData?]?

    enum CodingKeys: String, CodingKey {
        case key = "key"
        case parametersData = "values"
    }
}
