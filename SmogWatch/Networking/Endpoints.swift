//
//  Endpoints.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct Endpoints {
    static let mainPath = "http://api.gios.gov.pl/pjp-api/rest/"
    static let stationList = "http://api.gios.gov.pl/pjp-api/rest/station/findAll"
    static let stationData = "http://api.gios.gov.pl/pjp-api/rest/data/getData/%@"

    static var x: String { return mainPath + "station/findAll" }
}
