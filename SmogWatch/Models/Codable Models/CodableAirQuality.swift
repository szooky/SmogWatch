//
//  CodableAirQuality.swift
//  SmogWatch
//
//  Created by Filip Szukala on 21/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

class CodableAirQuality: Decodable {
    let id: Int?
    let stCalcDate: String?
    let stIndexLevel: CodableIndexLevel?
    let stSourceDataDate: String?
    let so2CalcDate: String?
    let so2IndexLevel: CodableIndexLevel?
    let so2SourceDataDate: String?
    let no2CalcDate: Int?
    let no2IndexLevel: CodableIndexLevel?
    let no2SourceDataDate: String?
    let coCalcDate: String?
    let coIndexLevel: CodableIndexLevel?
    let coSourceDataDate: String?
    let pm10CalcDate: String?
    let pm10IndexLevel: CodableIndexLevel?
    let pm10SourceDataDate: String?
    let pm25CalcDate: String?
    let pm25IndexLevel: CodableIndexLevel?
    let pm25SourceDataDate: String?
    let o3CalcDate: String?
    let o3IndexLevel: CodableIndexLevel?
    let o3SourceDataDate: String?
    let c6H6CalcDate: String?
    let c6H6IndexLevel: CodableIndexLevel?
    let c6H6SourceDataDate: String?
    let stIndexStatus: Bool?
    let stIndexCRParam: String?
}
