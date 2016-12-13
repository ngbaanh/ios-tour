//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Bá Anh Nguyễn on 12/8/16.
//  Copyright © 2016 Ba Anh Nguyen. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {
    
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
        
    }
}
