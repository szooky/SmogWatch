//
//  City+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension City {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<City> {
        return NSFetchRequest<City>(entityName: "City")
    }

    @NSManaged public var id: Int32
    @NSManaged public var name: String?
    @NSManaged public var commune: Commune?
    @NSManaged public var station: NSSet?

}

// MARK: Generated accessors for station
extension City {

    @objc(addStationObject:)
    @NSManaged public func addToStation(_ value: Station)

    @objc(removeStationObject:)
    @NSManaged public func removeFromStation(_ value: Station)

    @objc(addStation:)
    @NSManaged public func addToStation(_ values: NSSet)

    @objc(removeStation:)
    @NSManaged public func removeFromStation(_ values: NSSet)

}
