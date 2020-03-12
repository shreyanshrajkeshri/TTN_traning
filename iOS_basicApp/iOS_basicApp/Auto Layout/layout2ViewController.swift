//
//  layout2ViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 12/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class layout2ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.layer.cornerRadius = imageView.frame.size.height/2
        //imageView.layer.borderWidth = 2
    }
    

    
    
}
