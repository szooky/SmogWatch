//
//  SensorParameters+CoreDataClass.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData

@objc(SensorParameters)
public class SensorParameters: NSManagedObject, Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case code
        case formula
    }

    public required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey.managedObjectContext,
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "SensorParameters", in: managedObjectContext) else {
                fatalError("Failed to decode SensorParameters")
        }

        self.init(entity: entity, insertInto: managedObjectContext)
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decodeIfPresent(Int32.self, forKey: .id) ?? -1
        name = try container.decodeIfPresent(String.self, forKey: .name)
        code = try container.decodeIfPresent(String.self, forKey: .code)
        formula = try container.decodeIfPresent(String.self, forKey: .formula)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(code, forKey: .code)
        try container.encode(formula, forKey: .formula)
    }
}
