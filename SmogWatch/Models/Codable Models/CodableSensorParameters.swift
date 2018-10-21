//
//  CodableSensorParameters.swift
//  SmogWatch
//
//  Created by Filip Szukala on 22/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct CodableSensorParameters: Decodable {
    let name: String?
    let formula: String?
    let code: String?
    let id: Int?

    enum CodingKeys: String, CodingKey {
        case name = "paramName"
        case formula = "paramFormula"
        case code = "paramCode"
        case id = "idParam"
    }
}
