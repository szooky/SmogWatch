//
//  SensorParameters+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension SensorParameters {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SensorParameters> {
        return NSFetchRequest<SensorParameters>(entityName: "SensorParameters")
    }

    @NSManaged public var code: String?
    @NSManaged public var formula: String?
    @NSManaged public var id: Int32
    @NSManaged public var name: String?
    @NSManaged public var sensor: Sensor?

}
