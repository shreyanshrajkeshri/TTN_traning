//
//  SecondProtocolViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 13/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit


//Step 1. Create a Protocol with a func
protocol Nameable {
    func getInfo(name: String, age: String, parentsName: String)
}

class SecondProtocolViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var parentNameTextField: UITextField!
    
    
    //Step 2. Declare that
    var delegate: Nameable!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveAction(_ sender: UIButton) {
        
        //Step 3. Access the Function and Set the input text which come from textField now go to FirstProtocolViewController
        
        
        delegate.getInfo(name: nameTextField.text ?? "Name",
                         age: ageTextField.text ?? "21",
                         parentsName: parentNameTextField.text ?? "parentsName")
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
