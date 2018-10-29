//
//  CodableParameterData.swift
//  SmogWatch
//
//  Created by Filip Szukala on 21/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

class CodableParameterData: Decodable {
    let value: Double?
    let date: String?

    var formattedDate: Date? {
        guard let dateString = date else { return nil }
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

        return formatter.date(from: dateString) ?? nil
    }
}
