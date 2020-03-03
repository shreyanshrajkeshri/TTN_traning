//
//  FirstViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 03/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var pushToSecButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "First View"
        
        //adding button on top
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(self.pushToSecAction(_:)) )

    }
    
    @IBAction func pushToSecAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "SecondViewController")
        
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    
}
