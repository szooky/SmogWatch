//
//  String.swift
//  SmogWatch
//
//  Created by Filip Szukala on 29/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

extension Optional where Wrapped == String {
    var nilAsEmpty: String {
        return self ?? ""
    }
}

extension Optional where Wrapped == Int {
    var nilAsZero: Int {
        return self ?? 0
    }
}
