//
//  Item+CoreDataClass.swift
//  Dreamster
//
//  Created by Admin on 21.02.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {

    override public func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate()
        
        
    }
}
