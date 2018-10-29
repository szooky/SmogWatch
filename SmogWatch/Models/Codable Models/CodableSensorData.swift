//
//  CodableSensorData.swift
//  SmogWatch
//
//  Created by Filip Szukala on 22/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

class CodableSensorData: Decodable {
    let key: String?
    let parametersData: [CodableParameterData?]?

    enum CodingKeys: String, CodingKey {
        case key = "key"
        case parametersData = "values"
    }
}
