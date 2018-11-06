//
//  Database+GETs.swift
//  SmogWatch
//
//  Created by Filip Szukala on 06/11/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import CoreData

extension Database {
    private func getAllEntities<T: NSManagedObject>(entityName: String) -> [T]? {
        guard let managedContext = managedContext else { return nil }
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)

        do {
            let objects = try managedContext.fetch(request)
            return objects as? [T]
        } catch {
            print("💔 Fetching \(entityName) failed.")
            return nil
        }
    }
}

extension Database {
    func getAllStations() -> [Station]? {
        return getAllEntities(entityName: StationCoreDataProperties.entityName) as? [Station]
    }
}
