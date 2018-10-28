//
//  Station+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 28/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension Station {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Station> {
        return NSFetchRequest<Station>(entityName: "Station")
    }

    @NSManaged public var id: Int32
    @NSManaged public var name: String?
    @NSManaged public var latitude: String?
    @NSManaged public var longitude: String?
    @NSManaged public var address: String?
    @NSManaged public var cityId: Int32
    @NSManaged public var cityName: String?
    @NSManaged public var commune: String?
    @NSManaged public var district: String?
    @NSManaged public var province: String?

}
