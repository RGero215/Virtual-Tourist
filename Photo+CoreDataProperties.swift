//
//  Photo+CoreDataProperties.swift
//  Virtual Tourist
//
//  Created by Ramon Geronimo on 11/29/17.
//  Copyright © 2017 Ramon Geronimo. All rights reserved.
//
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }

    @NSManaged public var imageData: NSData?
    @NSManaged public var imageURL: String?
    @NSManaged public var index: Int16
    @NSManaged public var pin: Pin?

}
