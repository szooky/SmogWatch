
//
//  AirQuality.swift
//  SmogWatch
//
//  Created by Filip Szukala on 30/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct AirQuality: Decodable {
    let id: Int?
    let stCalcDate: String?
    let stIndexLevel: IndexLevel?
    let stSourceDataDate: String?
    let so2CalcDate: String?
    let so2IndexLevel: IndexLevel?
    let so2SourceDataDate: String?
    let no2CalcDate: Int?
    let no2IndexLevel: IndexLevel?
    let no2SourceDataDate: String?
    let coCalcDate: String?
    let coIndexLevel: IndexLevel?
    let coSourceDataDate: String?
    let pm10CalcDate: String?
    let pm10IndexLevel: IndexLevel?
    let pm10SourceDataDate: String?
    let pm25CalcDate: String?
    let pm25IndexLevel: IndexLevel?
    let pm25SourceDataDate: String?
    let o3CalcDate: String?
    let o3IndexLevel: IndexLevel?
    let o3SourceDataDate: String?
    let c6H6CalcDate: String?
    let c6H6IndexLevel: IndexLevel?
    let c6H6SourceDataDate: String?
    let stIndexStatus: Bool?
    let stIndexCRParam: String?
}
