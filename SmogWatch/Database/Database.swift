//
//  Database.swift
//  SmogWatch
//
//  Created by Filip Szukala on 29/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit
import CoreData

class Database {
    static var shared = Database()

    func save(data: [String: Any], as entityName: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext

        guard let entity = NSEntityDescription.entity(forEntityName: entityName, in: managedContext) else { return }
        let object = NSManagedObject(entity: entity, insertInto: managedContext)

        for (key, value) in data {
            object.setValue(value, forKey: key)
        }

        do {
            try managedContext.save()

        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
}
