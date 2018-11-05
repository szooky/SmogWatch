//
//  SmogData+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 28/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension SmogData {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<SmogData> {
        return NSFetchRequest<SmogData>(entityName: SmogDataCoreDataProperties.entityName)
    }

    @NSManaged public var id: UUID?
    @NSManaged public var stationId: Int32
    @NSManaged public var parameterName: String?
    @NSManaged public var date: String?
    @NSManaged public var value: Double
}

class SmogDataCoreDataProperties {
    static let entityName = "SmogData"
    static let id = "id"
    static let stationId = "stationId"
    static let parameterName = "parameterName"
    static let date = "date"
    static let value = "value"
}
