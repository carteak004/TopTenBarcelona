//
//  RTableViewCell.swift
//  KChintalapatiTopTenBarcelona
//
//  Created by Kartheek chintalapati on 10/03/17.
//  Copyright © 2017 Kartheek Chintalapati. All rights reserved.
//

/*
 Author: Kartheek Chintalapati
 
 Z ID : z1788719
 
This holds the cells
 */

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var rImagecell: UIImageView!
    
    @IBOutlet weak var rLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
