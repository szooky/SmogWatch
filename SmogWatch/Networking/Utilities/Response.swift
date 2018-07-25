//
//  NetworkingTypeAliases.swift
//  SmogWatch
//
//  Created by Filip Szukala on 24/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

public typealias ResponseCallback<Value> = (Response<Value>) -> Void

public enum Response<Value> {
    case success(Value)
    case failure(Error)
}
