//
//  ItemType+CoreDataProperties.swift
//  Dreamster
//
//  Created by Admin on 21.02.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
