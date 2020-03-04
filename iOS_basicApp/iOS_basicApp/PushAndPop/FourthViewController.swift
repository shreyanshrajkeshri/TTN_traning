//
//  FourthViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 03/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var popToSecButton: UIButton!
    @IBOutlet weak var popToRootButton: UIButton!
    @IBOutlet weak var presentButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Fourth View"
        
    }
    
    @IBAction func presentAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "FifthViewController")
        
        self.navigationController!.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func popToRootAction(_ sender: UIButton) {
        
        self.navigationController!.popToRootViewController(animated: true)
    }
    
    @IBAction func popToSecAction(_ sender: UIButton) {
        
        for vc in (self.navigationController?.viewControllers ?? []) {
        if vc is SecondViewController {
            _ = self.navigationController?.popToViewController(vc, animated: true)
            break
        }

        
    }
}
    
}
