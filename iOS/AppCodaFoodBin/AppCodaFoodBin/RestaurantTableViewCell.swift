//
//  RestaurantTableViewCell.swift
//  AppCodaFoodBin
//
//  Created by Dan Johnson on 8/6/20.
//  Copyright © 2020 Dan Johnson. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet var namelabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
}
