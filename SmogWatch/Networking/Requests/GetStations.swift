//
//  GetStations.swift
//  SmogWatch
//
//  Created by Filip Szukala on 25/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct GetStations: Request {
    typealias Response = [Station]
    var resourcePath: String { return "station/findAll" }
}
