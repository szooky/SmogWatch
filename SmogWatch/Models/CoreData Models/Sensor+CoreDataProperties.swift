//
//  Sensor+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 28/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension Sensor {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Sensor> {
        return NSFetchRequest<Sensor>(entityName: SensorCoreDataProperties.entityName)
    }

    @NSManaged public var id: Int32
    @NSManaged public var stationId: Int32
    @NSManaged public var name: String?
    @NSManaged public var formula: String?
    @NSManaged public var code: String?
    @NSManaged public var parameterId: Int32
}

class SensorCoreDataProperties {
    static let entityName = "Sensor"
    static let id = "id"
    static let stationId = "stationId"
    static let name = "name"
    static let formula = "formula"
    static let code = "code"
    static let parameterId = "parameterId"
}
