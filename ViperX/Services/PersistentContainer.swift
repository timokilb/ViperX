//
//  PersistentContainer.swift
//  ViperX
//
//  Created by Neo on 04.04.20.
//  Copyright © 2020 Neo. All rights reserved.
//

import Foundation
import CoreData

class PersistentContainer: NSPersistentContainer {

    func saveContext(backgroundContext: NSManagedObjectContext? = nil) {
        let context = backgroundContext ?? viewContext
        guard context.hasChanges else { return }
        do {
            try context.save()
        } catch let error as NSError {
            print("Error: \(error), \(error.userInfo)")
        }
    }
}
