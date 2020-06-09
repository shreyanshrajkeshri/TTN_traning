//
//  FirstProtocolViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 13/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class FirstProtocolViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    

    @IBAction func getDataAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondProtocolViewController") as! SecondProtocolViewController
        
        //Step 6. Assign the self to declare delegate 
        vc.delegate = self
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

}


//Step 4. Make a Extension of Class with protocol
extension FirstProtocolViewController: Nameable {
    
    //Step 5. Add the function and set the passes data to label.text
    func getInfo(name: String, age: String, parentsName: String) {
        
        nameLabel.text = "Name : \(name) \nAge : \(age) \nParent's Name : \(parentsName)"
    }
    

    
}
