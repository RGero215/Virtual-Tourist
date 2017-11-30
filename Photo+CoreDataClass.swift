//
//  Photo+CoreDataClass.swift
//  Virtual Tourist
//
//  Created by Ramon Geronimo on 11/29/17.
//  Copyright © 2017 Ramon Geronimo. All rights reserved.
//
//

import Foundation
import CoreData


public class Photo: NSManagedObject {
    
    convenience init(index:Int, imageURL: String, imageData: NSData?, context: NSManagedObjectContext) {
        
        if let ent = NSEntityDescription.entity(forEntityName: "Photo", in: context) {
            
            self.init(entity: ent, insertInto: context)
            self.index = Int16(index)
            self.imageURL = imageURL
            self.imageData = imageData
            
        } else {
            
            fatalError("Unable To Find Entity Name!")
        }
    }
}
