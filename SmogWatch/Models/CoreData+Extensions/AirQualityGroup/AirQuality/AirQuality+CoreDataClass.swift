//
//  AirQuality+CoreDataClass.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData

@objc(AirQuality)
public class AirQuality: NSManagedObject, Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case c6H6CalcDate, c6H6SourceDataDate, c6H6IndexLevel
        case coCalcDate, coSourceDataDate, coIndexLevel
        case no2CalcDate, no2SourceDataDate, no2IndexLevel
        case o3CalcDate, o3SourceDataDate, o3IndexLevel
        case pm10CalcDate, pm10SourceDataDate, pm10IndexLevel
        case pm25CalcDate, pm25SourceDataDate, pm25IndexLevel
        case so2CalcDate, so2SourceDataDate, so2IndexLevel
        case stCalcDate, stIndexCRParam, stIndexStatus, stSourceDataDate, stIndexLevel
    }

    public required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey.managedObjectContext,
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "AirQuality", in: managedObjectContext) else {
                fatalError("Failed to decode AirQuality")
        }

        self.init(entity: entity, insertInto: managedObjectContext)
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decodeIfPresent(Int32.self, forKey: .id) ?? -1

        c6H6CalcDate = try container.decodeIfPresent(String.self, forKey: .c6H6CalcDate)
        c6H6SourceDataDate = try container.decodeIfPresent(String.self, forKey: .c6H6SourceDataDate)
        c6H6IndexLevel = try container.decodeIfPresent(IndexLevel.self, forKey: .c6H6IndexLevel)

        coCalcDate = try container.decodeIfPresent(String.self, forKey: .coCalcDate)
        coSourceDataDate = try container.decodeIfPresent(String.self, forKey: .coSourceDataDate)
        coIndexLevel = try container.decodeIfPresent(IndexLevel.self, forKey: .coIndexLevel)

        no2CalcDate = try container.decodeIfPresent(Int32.self, forKey: .no2CalcDate) ?? 0
        no2SourceDataDate = try container.decodeIfPresent(String.self, forKey: .no2SourceDataDate)
        no2IndexLevel = try container.decodeIfPresent(IndexLevel.self, forKey: .no2IndexLevel)

        o3CalcDate = try container.decodeIfPresent(String.self, forKey: .o3CalcDate)
        o3SourceDataDate = try container.decodeIfPresent(String.self, forKey: .o3SourceDataDate)
        o3IndexLevel = try container.decodeIfPresent(IndexLevel.self, forKey: .o3IndexLevel)

        pm10CalcDate = try container.decodeIfPresent(String.self, forKey: .pm10CalcDate)
        pm10SourceDataDate = try container.decodeIfPresent(String.self, forKey: .pm10SourceDataDate)
        pm10IndexLevel = try container.decodeIfPresent(IndexLevel.self, forKey: .pm10IndexLevel)

        pm25CalcDate = try container.decodeIfPresent(String.self, forKey: .pm25CalcDate)
        pm25SourceDataDate = try container.decodeIfPresent(String.self, forKey: .pm25SourceDataDate)
        pm25IndexLevel = try container.decodeIfPresent(IndexLevel.self, forKey: .pm25IndexLevel)

        so2CalcDate = try container.decodeIfPresent(String.self, forKey: .so2CalcDate)
        so2SourceDataDate = try container.decodeIfPresent(String.self, forKey: .so2SourceDataDate)
        so2IndexLevel = try container.decodeIfPresent(IndexLevel.self, forKey: .so2IndexLevel)

        stCalcDate = try container.decodeIfPresent(String.self, forKey: .stCalcDate)
        stIndexCRParam = try container.decodeIfPresent(String.self, forKey: .stIndexCRParam)
        stIndexStatus = try container.decodeIfPresent(Bool.self, forKey: .stIndexStatus) ?? false
        stSourceDataDate = try container.decodeIfPresent(String.self, forKey: .stSourceDataDate)
        stIndexLevel = try container.decodeIfPresent(IndexLevel.self, forKey: .stIndexLevel)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)

        try container.encode(c6H6CalcDate, forKey: .c6H6CalcDate)
        try container.encode(c6H6SourceDataDate, forKey: .c6H6SourceDataDate)
        try container.encode(c6H6IndexLevel, forKey: .c6H6IndexLevel)

        try container.encode(coCalcDate, forKey: .coCalcDate)
        try container.encode(coSourceDataDate, forKey: .coSourceDataDate)
        try container.encode(coIndexLevel, forKey: .coIndexLevel)

        try container.encode(no2CalcDate, forKey: .no2CalcDate)
        try container.encode(no2SourceDataDate, forKey: .no2SourceDataDate)
        try container.encode(no2IndexLevel, forKey: .no2IndexLevel)

        try container.encode(o3CalcDate, forKey: .o3CalcDate)
        try container.encode(o3SourceDataDate, forKey: .o3SourceDataDate)
        try container.encode(o3IndexLevel, forKey: .o3IndexLevel)

        try container.encode(pm10CalcDate, forKey: .pm10CalcDate)
        try container.encode(pm10SourceDataDate, forKey: .pm10SourceDataDate)
        try container.encode(pm10IndexLevel, forKey: .pm10IndexLevel)

        try container.encode(pm25CalcDate, forKey: .pm25CalcDate)
        try container.encode(pm25SourceDataDate, forKey: .pm25SourceDataDate)
        try container.encode(pm25IndexLevel, forKey: .pm25IndexLevel)

        try container.encode(so2CalcDate, forKey: .so2CalcDate)
        try container.encode(so2SourceDataDate, forKey: .so2SourceDataDate)
        try container.encode(so2IndexLevel, forKey: .so2IndexLevel)

        try container.encode(stCalcDate, forKey: .stCalcDate)
        try container.encode(stIndexCRParam, forKey: .stIndexCRParam)
        try container.encode(stIndexStatus, forKey: .stIndexStatus)
        try container.encode(stSourceDataDate, forKey: .stSourceDataDate)
        try container.encode(stIndexLevel, forKey: .stIndexLevel)
    }
}
