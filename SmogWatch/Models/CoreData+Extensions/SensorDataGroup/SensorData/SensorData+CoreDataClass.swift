//
//  SensorData+CoreDataClass.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData

@objc(SensorData)
public class SensorData: NSManagedObject, Codable {
    enum CodingKeys: String, CodingKey {
        case key
        case parametersData
    }

    public required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey.managedObjectContext,
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "SensorData", in: managedObjectContext) else {
                fatalError("Failed to decode SensorData")
        }

        self.init(entity: entity, insertInto: managedObjectContext)
        let container = try decoder.container(keyedBy: CodingKeys.self)

        key = try container.decodeIfPresent(String.self, forKey: .key)
        parametersData = try container.decodeIfPresent(ParameterData.self, forKey: .parametersData)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(key, forKey: .key)
        try container.encode(parametersData, forKey: .parametersData)
    }
}
