//
//  ViewController.swift
//  protocol
//
//  Created by Shreyansh Raj on 06/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getDataActionButton(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ViewController: DataPass{
    
    func getData(name: String, age: String, address: String) {
        
        nameLabel.text = name
        ageLabel.text = age
        addressLabel.text = address
    }
    
}

