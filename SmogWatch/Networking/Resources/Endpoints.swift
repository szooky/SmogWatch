//
//  Endpoints.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct Endpoints {
    static let base = "http://api.gios.gov.pl/pjp-api/rest/"
    static var stationList: String { return base + "station/findAll" }
    static var stationData: String { return base + "data/getData/%@" }
}
