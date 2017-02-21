//
//  Store+CoreDataProperties.swift
//  Dreamster
//
//  Created by Admin on 21.02.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import Foundation
import CoreData


extension Store {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Store> {
        return NSFetchRequest<Store>(entityName: "Store");
    }

    @NSManaged public var name: String?
    @NSManaged public var toImage: Image?
    @NSManaged public var toItem: Item?

}
