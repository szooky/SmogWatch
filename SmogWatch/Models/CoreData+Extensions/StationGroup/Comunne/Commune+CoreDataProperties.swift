//
//  Commune+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension Commune {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Commune> {
        return NSFetchRequest<Commune>(entityName: "Commune")
    }

    @NSManaged public var communeName: String?
    @NSManaged public var districtName: String?
    @NSManaged public var provinceName: String?
    @NSManaged public var city: City?

}
