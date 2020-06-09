//
//  SecondViewController.swift
//  protocol
//
//  Created by Shreyansh Raj on 06/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!

    var delegate: DataPass!
        
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        nameTextField.delegate = self
        ageTextField.delegate = self
        addressTextField.delegate = self
       
    }
    

    @IBAction func saveActionButton(_ sender: UIButton) {
        
        delegate.getData(name: nameTextField.text!, age: ageTextField.text!, address: addressTextField.text!)
        
        self.navigationController?.popViewController(animated: true)
    }
    

}

extension SecondViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
        case nameTextField:
            ageTextField.becomeFirstResponder()
        case ageTextField:
            addressTextField.becomeFirstResponder()
        case addressTextField:
            textField.resignFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return false
    }
}
