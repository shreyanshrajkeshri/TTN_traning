//
//  DetailsTableViewCell.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 09/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var imageVIew: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //imageView!.layer.cornerRadius = imageView!.frame.size.height/2
        imageView?.layer.cornerRadius = (imageView?.frame.size.height ?? 60)/2

        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func setLabel(name: String, address: String, age: Int, details: String)
//    {
//        nameLabel.text = name
//        addressLabel.text = address
//        ageLabel.text = String(age)
//        detailsLabel.text = details
//    }
    
}
