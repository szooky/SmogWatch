//
//  Station.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import CoreData

class Station: Decodable {
    let id: Int?
    let stationName: String?
    let gegrLat: String?
    let gegrLon: String?
    let city: City?
    let addressStreet: String?
}

class City: Decodable {
    let id: Int?
    let name: String?
    let commune: Commune?
}

class Commune: Decodable {
    let communeName: String?
    let districtName: String?
    let provinceName: String?
}

