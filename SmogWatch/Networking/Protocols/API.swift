//
//  API.swift
//  SmogWatch
//
//  Created by Filip Szukala on 24/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

protocol API {
    func send<T: Request>(_ request: T, completion: @escaping ResponseCallback<T.Response>)
}
