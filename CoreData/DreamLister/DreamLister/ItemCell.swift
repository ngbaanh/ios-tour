//
//  ItemCell.swift
//  DreamLister
//
//  Created by Bá Anh Nguyễn on 12/9/16.
//  Copyright © 2016 Ba Anh Nguyen. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    
    @IBOutlet weak var title: UILabel!

    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var details: UILabel!
    
    func configuareCell(item: Item) {
        title.text = item.title
        price.text = "$\(item.price)"
        details.text = item.details
    }
    
}
