//
//  FifthViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 03/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var dismissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
