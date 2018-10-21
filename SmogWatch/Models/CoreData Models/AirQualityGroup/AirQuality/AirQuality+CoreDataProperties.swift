//
//  AirQuality+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
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

    @NSManaged public var c6H6CalcDate: String?
    @NSManaged public var c6H6SourceDataDate: String?
    @NSManaged public var c6H6IndexLevel: IndexLevel?

    @NSManaged public var coCalcDate: String?
    @NSManaged public var coSourceDataDate: String?
    @NSManaged public var coIndexLevel: IndexLevel?

    @NSManaged public var no2CalcDate: Int32
    @NSManaged public var no2SourceDataDate: String?
    @NSManaged public var no2IndexLevel: IndexLevel?

    @NSManaged public var o3CalcDate: String?
    @NSManaged public var o3SourceDataDate: String?
    @NSManaged public var o3IndexLevel: IndexLevel?

    @NSManaged public var pm10CalcDate: String?
    @NSManaged public var pm10SourceDataDate: String?
    @NSManaged public var pm10IndexLevel: IndexLevel?

    @NSManaged public var pm25CalcDate: String?
    @NSManaged public var pm25SourceDataDate: String?
    @NSManaged public var pm25IndexLevel: IndexLevel?

    @NSManaged public var so2CalcDate: String?
    @NSManaged public var so2SourceDataDate: String?
    @NSManaged public var so2IndexLevel: IndexLevel?

    @NSManaged public var stCalcDate: String?
    @NSManaged public var stIndexCRParam: String?
    @NSManaged public var stIndexStatus: Bool
    @NSManaged public var stSourceDataDate: String?
    @NSManaged public var stIndexLevel: IndexLevel?
}
