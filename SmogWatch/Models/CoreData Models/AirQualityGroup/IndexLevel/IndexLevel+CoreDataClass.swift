//
//  IndexLevel+CoreDataClass.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData

@objc(IndexLevel)
public class IndexLevel: NSManagedObject, Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case indexLevelName
    }

    public required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey.managedObjectContext,
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "IndexLevel", in: managedObjectContext) else {
                fatalError("Failed to decode IndexLevel")
        }

        self.init(entity: entity, insertInto: managedObjectContext)
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decodeIfPresent(Int32.self, forKey: .id) ?? -1
        indexLevelName = try container.decodeIfPresent(String.self, forKey: .indexLevelName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(indexLevelName, forKey: .indexLevelName)
    }
}
