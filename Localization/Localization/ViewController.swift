//
//  ViewController.swift
//  Localization
//
//  Created by Shreyansh Raj on 28/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = NSLocalizedString("TextKey", comment: "App Localization")
        imageView.image = UIImage(named: NSLocalizedString("ImageKey", comment: "Sample Image"))!

    }


}

