//
//  SmogApiError.swift
//  SmogWatch
//
//  Created by Filip Szukala on 30/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

public enum SmogError: Error {
    case encoding
    case decoding
    case server(message: String)
}

