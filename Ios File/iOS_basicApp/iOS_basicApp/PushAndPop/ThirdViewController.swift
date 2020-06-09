//
//  ThirdViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 03/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var pushToFourthButton: UIButton!
    @IBOutlet weak var popBackToSecButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pushToFourthAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "FourthViewController")
        
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    @IBAction func popToSecAction(_ sender: Any) {
        
        self.navigationController!.popViewController(animated: true)
    }
}
