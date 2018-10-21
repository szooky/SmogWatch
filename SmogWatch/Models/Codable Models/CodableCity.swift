//
//  CodableCity.swift
//  SmogWatch
//
//  Created by Filip Szukala on 22/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct CodableCity: Decodable {
    let id: Int?
    let name: String?
    let commune: CodableCommune?
}
