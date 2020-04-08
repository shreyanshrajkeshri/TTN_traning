//
//  CountriesTableViewCell.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 08/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class CountriesTableViewCell: UITableViewCell {

    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var capitalNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCountryName(countryName: String) {
        
        countryNameLabel.text = countryName
    }
    
    func setCapitalName(capitalName: String) {
        
        capitalNameLabel.text = capitalName
    }
}
