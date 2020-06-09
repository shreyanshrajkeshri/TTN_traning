//
//  NC2ViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 09/06/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class NC2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: #selector(changeBackgroundColor), name: Notification.Name("ChangeBackgroundColor"), object: nil)
        
    }
    
    @objc func changeBackgroundColor() {
        
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
    }
    

    @IBAction func changeBAckgroundColorAction(_ sender: UIButton) {
        
        let nc = NotificationCenter.default
        nc.post(name: Notification.Name("ChangeBackgroundColor"), object: nil)
    }
}
