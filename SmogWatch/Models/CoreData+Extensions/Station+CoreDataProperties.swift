//
//  Station+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension Station {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Station> {
        return NSFetchRequest<Station>(entityName: "Station")
    }

    @NSManaged public var addressStreet: String?
    @NSManaged public var id: Int32
    @NSManaged public var latitude: String?
    @NSManaged public var longitude: String?
    @NSManaged public var stationName: String?
    @NSManaged public var city: City?

}
