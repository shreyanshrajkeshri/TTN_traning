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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = NSLocalizedString("MyKey", comment: "App Localization")
    }


}

