//
//  Station.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct Station: Decodable {
    let id: Int?
    let stationName, gegrLat, gegrLon: String?
    let city: City?
    let addressStreet: String?
}

struct City: Decodable {
    let id: Int?
    let name: String?
    let commune: Commune?
}

struct Commune: Decodable {
    let communeName, districtName, provinceName: String?
}

