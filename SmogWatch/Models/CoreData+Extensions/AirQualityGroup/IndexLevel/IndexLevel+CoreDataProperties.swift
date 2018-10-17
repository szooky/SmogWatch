//
//  IndexLevel+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension IndexLevel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<IndexLevel> {
        return NSFetchRequest<IndexLevel>(entityName: "IndexLevel")
    }

    @NSManaged public var id: Int32
    @NSManaged public var indexLevelName: String?
    @NSManaged public var c6H6AirQuality: AirQuality?
    @NSManaged public var coAirQuailty: AirQuality?
    @NSManaged public var no2AirQuality: AirQuality?
    @NSManaged public var o3AirQuality: AirQuality?
    @NSManaged public var pm10AirQuality: AirQuality?
    @NSManaged public var pm25AirQuality: AirQuality?
    @NSManaged public var so2AirQuality: AirQuality?
    @NSManaged public var stAirQuality: AirQuality?

}
