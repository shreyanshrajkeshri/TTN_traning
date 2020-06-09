//
//  TableViewCell.swift
//  cocoapods
//
//  Created by Shreyansh Raj on 20/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setId(id: String) {
        idLabel.text = "Author Id : \(id)"
    }
    
    func setAuthor(author: String) {
        authorLabel.text = "Author Name : \(author)"
    }
    
}
