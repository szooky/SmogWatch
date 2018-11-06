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
    var managedContext: NSManagedObjectContext? {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return nil }
        return appDelegate.persistentContainer.viewContext
    }
}
