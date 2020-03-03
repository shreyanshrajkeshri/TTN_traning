//
//  SecondViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 03/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var pushToThirdButton: UIButton!
    @IBOutlet weak var popBackToFirstButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Second View"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(self.pushToThirdAction(_:)))
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(self.popToFirstAction(_:)))
    }
    

    @IBAction func pushToThirdAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "ThirdViewController")
        
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    @IBAction func popToFirstAction(_ sender: Any) {
        
        self.navigationController!.popViewController(animated: true)
    }
    
    
}
