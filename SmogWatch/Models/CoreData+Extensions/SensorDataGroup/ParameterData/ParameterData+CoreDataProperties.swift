//
//  ParameterData+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData


extension ParameterData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ParameterData> {
        return NSFetchRequest<ParameterData>(entityName: "ParameterData")
    }

    @NSManaged public var date: String?
    @NSManaged public var value: String?
    @NSManaged public var sensorData: SensorData?

}
