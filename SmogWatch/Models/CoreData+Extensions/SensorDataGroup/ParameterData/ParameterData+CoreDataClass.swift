//
//  ParameterData+CoreDataClass.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData

@objc(ParameterData)
public class ParameterData: NSManagedObject, Codable {
    enum CodingKeys: String, CodingKey {
        case date
        case value
    }

    public required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey.managedObjectContext,
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "ParameterData", in: managedObjectContext) else {
                fatalError("Failed to decode ParameterData")
        }

        self.init(entity: entity, insertInto: managedObjectContext)
        let container = try decoder.container(keyedBy: CodingKeys.self)

        date = try container.decodeIfPresent(String.self, forKey: .date)
        value = try container.decodeIfPresent(String.self, forKey: .value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(date, forKey: .date)
        try container.encode(value, forKey: .value)
    }
}
