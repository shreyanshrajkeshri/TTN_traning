//
//  layout3ViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 12/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class layout3ViewController: UIViewController {
    
    var view1 = UIView(frame: CGRect(x: 20, y: 220, width: 200, height: 200))

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view1.backgroundColor = .black
        self.view.addSubview(view1)
    }
    
    
    

    
}
