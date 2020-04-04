//
//  Pokemon+CoreDataProperties.swift
//  ViperX
//
//  Created by Neo on 04.04.20.
//  Copyright © 2020 Neo. All rights reserved.
//
//

import Foundation
import CoreData


extension Pokemon {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pokemon> {
        return NSFetchRequest<Pokemon>(entityName: "Pokemon")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?

}
