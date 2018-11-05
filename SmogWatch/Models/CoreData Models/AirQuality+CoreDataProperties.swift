//
//  AirQuality+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 28/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension AirQuality {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<AirQuality> {
        return NSFetchRequest<AirQuality>(entityName: AirQualityCoreDataProperties.entityName)
    }

    @NSManaged public var id: String?
    @NSManaged public var stationId: Int32
    @NSManaged public var stIndexLevelId: Int32
    @NSManaged public var stIndexLevelName: String?
    @NSManaged public var stCalcDate: String?
    @NSManaged public var stSourceDataDate: String?
    @NSManaged public var so2CalcDate: String?
    @NSManaged public var so2IndexLevelId: Int32
    @NSManaged public var so2IndexLevelName: String?
    @NSManaged public var so2SourceDataDate: String?
    @NSManaged public var no2CalcDate: Int32
    @NSManaged public var no2IndexLevelId: Int32
    @NSManaged public var no2IndexLevelName: String?
    @NSManaged public var no2SourceDataDate: String?
    @NSManaged public var coCalcDate: String?
    @NSManaged public var coIndexLevelId: Int32
    @NSManaged public var coIndexLevelName: String?
    @NSManaged public var coSourceDataDate: String?
    @NSManaged public var pm10CalcDate: String?
    @NSManaged public var pm10IndexLevelId: Int32
    @NSManaged public var pm10SourceDataDate: String?
    @NSManaged public var pm25CalcDate: String?
    @NSManaged public var pm25IndexLevelId: Int32
    @NSManaged public var pm25IndexLevelName: String?
    @NSManaged public var pm25SourceDataDate: String?
    @NSManaged public var o3CalcDate: String?
    @NSManaged public var o3IndexLevelId: Int32
    @NSManaged public var o3IndexLevelName: String?
    @NSManaged public var o3SourceDataDate: String?
    @NSManaged public var c6h6CalcDate: String?
    @NSManaged public var c6h6IndexLevelId: Int32
    @NSManaged public var c6h6IndexLevelName: String?
    @NSManaged public var c6h6SourceDataDate: String?
    @NSManaged public var pm10IndexLevelName: String?
}

class AirQualityCoreDataProperties {
    static let entityName = "AirQuality"
    static let id = "id"
    static let stationId = "stationId"
    static let stIndexLevelId = "stIndexLevelId"
    static let stIndexLevelName = "stIndexLevelName"
    static let stCalcDate = "stCalcDate"
    static let stSourceDataDate = "stSourceDataDate"
    static let so2CalcDate = "so2CalcDate"
    static let so2IndexLevelId = "so2IndexLevelId"
    static let so2IndexLevelName = "so2IndexLevelName"
    static let so2SourceDataDate = "so2SourceDataDate"
    static let no2CalcDate = "no2CalcDate"
    static let no2IndexLevelId = "no2IndexLevelId"
    static let no2IndexLevelName = "no2IndexLevelName"
    static let no2SourceDataDate = "no2SourceDataDate"
    static let coCalcDate = "coCalcDate"
    static let coIndexLevelId = "coIndexLevelId"
    static let coIndexLevelName = "coIndexLevelName"
    static let coSourceDataDate = "coSourceDataDate"
    static let pm10CalcDate = "pm10CalcDate"
    static let pm10IndexLevelId = "pm10IndexLevelId"
    static let pm10SourceDataDate = "pm10SourceDataDate"
    static let pm25CalcDate = "pm25CalcDate"
    static let pm25IndexLevelId = "pm25IndexLevelId"
    static let pm25IndexLevelName = "pm25IndexLevelName"
    static let pm25SourceDataDate = "pm25SourceDataDate"
    static let o3CalcDate = "o3CalcDate"
    static let o3IndexLevelId = "o3IndexLevelId"
    static let o3IndexLevelName = "o3IndexLevelName"
    static let o3SourceDataDate = "o3SourceDataDate"
    static let c6h6CalcDate = "c6h6CalcDate"
    static let c6h6IndexLevelId = "c6h6IndexLevelId"
    static let c6h6IndexLevelName = "c6h6IndexLevelName"
    static let c6h6SourceDataDate = "c6h6SourceDataDate"
    static let pm10IndexLevelName = "pm10IndexLevelName"
}
