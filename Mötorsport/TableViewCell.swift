//
//  TableViewCell.swift
//  Mötorsport
//
//  Created by Gurudutt on 09/02/18.
//  Copyright © 2018 Searde. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cell_image: UIImageView!
    
    @IBOutlet weak var cell_title: UILabel!
    
    @IBOutlet weak var cell_desc: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
