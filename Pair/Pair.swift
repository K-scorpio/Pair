//
//  Pair.swift
//  Pair
//
//  Created by Kevin Hartley on 6/24/16.
//  Copyright © 2016 Hartley Development. All rights reserved.
//

import Foundation
import CoreData


class Pair: NSManagedObject {

    convenience init?(name: String, insertIntoManagedObjectContext context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        guard let entity = NSEntityDescription.entityForName("Pair", inManagedObjectContext: context) else {
            return nil
        }
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        self.name = name
    }

}
