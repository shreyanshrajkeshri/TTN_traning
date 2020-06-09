//
//  ViewController.swift
//  iOS Framworks
//
//  Created by Shreyansh Raj on 04/05/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var modeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }


    @IBAction func LightAndDarkModeAction(_ sender: UISwitch) {
        
        if(sender.isOn) {
            overrideUserInterfaceStyle = .dark
            modeLabel.text = "Dark Mode Activated"
        }
        
        else {
            overrideUserInterfaceStyle = .light
            modeLabel.text = "Light Mode Activated"
        }
    }
    

}

