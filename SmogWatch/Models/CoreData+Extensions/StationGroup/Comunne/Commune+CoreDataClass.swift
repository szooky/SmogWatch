//
//  Commune+CoreDataClass.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Commune)
public class Commune: NSManagedObject, Codable {
    enum CodingKeys: String, CodingKey {
        case communeName
        case districtName
        case provinceName
    }

    public required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey.managedObjectContext,
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "Commune", in: managedObjectContext) else {
                fatalError("Failed to decode Commune")
        }

        self.init(entity: entity, insertInto: managedObjectContext)
        let container = try decoder.container(keyedBy: CodingKeys.self)

        communeName = try container.decodeIfPresent(String.self, forKey: .communeName)
        districtName = try container.decodeIfPresent(String.self, forKey: .districtName)
        provinceName = try container.decodeIfPresent(String.self, forKey: .provinceName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(communeName, forKey: .communeName)
        try container.encode(districtName, forKey: .districtName)
        try container.encode(provinceName, forKey: .provinceName)
    }
}
