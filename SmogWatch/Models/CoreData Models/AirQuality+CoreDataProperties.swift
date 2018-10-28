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
        return NSFetchRequest<AirQuality>(entityName: "AirQuality")
    }

    @NSManaged public var id: Int32
    @NSManaged public var stationId: Int32
    @NSManaged public var stIndexLevelId: Int32
    @NSManaged public var stIndexLevelName: String?
    @NSManaged public var stCalcDate: String?
    @NSManaged public var stSourceDataDate: String?
    @NSManaged public var so2CalcDate: String?
    @NSManaged public var so2IndexLevelId: Int32
    @NSManaged public var so2IndexLevelName: String?
    @NSManaged public var so2SourceDataDate: String?
    @NSManaged public var no2CalcDate: String?
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
