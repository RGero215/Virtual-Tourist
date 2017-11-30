//
//  Pin+CoreDataClass.swift
//  Virtual Tourist
//
//  Created by Ramon Geronimo on 11/29/17.
//  Copyright © 2017 Ramon Geronimo. All rights reserved.
//
//

import Foundation
import CoreData


public class Pin: NSManagedObject {
    
    convenience init(latitude: Double, longitude: Double, context: NSManagedObjectContext) {
        
        if let ent = NSEntityDescription.entity(forEntityName: "Pin", in: context) {
            
            self.init(entity: ent, insertInto: context)
            self.latitude   = latitude
            self.longitude  = longitude
            
        } else {
            
            fatalError("Unable To Find Entity Name!")
        }
    }

}
