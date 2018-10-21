//
//  Sensor+CoreDataClass.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Sensor)
public class Sensor: NSManagedObject, Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case stationId
        case parameters = "param"
    }

    public required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey.managedObjectContext,
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "Sensor", in: managedObjectContext) else {
                fatalError("Failed to decode Sensor")
        }

        self.init(entity: entity, insertInto: managedObjectContext)
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decodeIfPresent(Int32.self, forKey: .id) ?? -1
        stationId = try container.decodeIfPresent(Int32.self, forKey: .stationId) ?? -1
        parameters = try container.decodeIfPresent(SensorParameters.self, forKey: .parameters)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(stationId, forKey: .stationId)
        try container.encode(parameters, forKey: .parameters)
    }
}
