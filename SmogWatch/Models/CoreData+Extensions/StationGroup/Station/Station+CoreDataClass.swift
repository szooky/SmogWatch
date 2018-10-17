//
//  Station+CoreDataClass.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Station)
public class Station: NSManagedObject, Codable {
    enum CodingKeys: String, CodingKey {
        case addressStreet
        case id
        case stationName
        case city
        case latitude = "gegrLat"
        case longitude = "gegrLon"
    }

    public required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey.managedObjectContext,
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "Station", in: managedObjectContext) else {
                fatalError("Failed to decode Station")
        }

        self.init(entity: entity, insertInto: managedObjectContext)
        let container = try decoder.container(keyedBy: CodingKeys.self)

        addressStreet = try container.decodeIfPresent(String.self, forKey: .addressStreet)
        id = try container.decodeIfPresent(Int32.self, forKey: .id) ?? -1
        stationName = try container.decodeIfPresent(String.self, forKey: .stationName)
        city = try container.decodeIfPresent(City.self, forKey: .city)
        latitude = try container.decodeIfPresent(String.self, forKey: .latitude)
        longitude = try container.decodeIfPresent(String.self, forKey: .longitude)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(addressStreet, forKey: .addressStreet)
        try container.encode(id, forKey: .id)
        try container.encode(stationName, forKey: .stationName)
        try container.encode(city, forKey: .city)
        try container.encode(latitude, forKey: .latitude)
        try container.encode(longitude, forKey: .longitude)
    }
}
