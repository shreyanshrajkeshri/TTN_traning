//
//  TextFieldDelegateViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 15/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class TextFieldDelegateViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var textField8: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        textField5.delegate = self
        textField6.delegate = self
        textField7.delegate = self
        textField8.delegate = self
        
        
        self.hideKeyboardTappedAround()
    }
    

    
}

extension TextFieldDelegateViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
        case textField1:
            textField2.becomeFirstResponder()
        case textField2:
            textField3.becomeFirstResponder()
        case textField3:
            textField4.becomeFirstResponder()
        case textField4:
            textField5.becomeFirstResponder()
        case textField5:
            textField6.becomeFirstResponder()
        case textField6:
            textField7.becomeFirstResponder()
        case textField7:
            textField8.becomeFirstResponder()
        case textField8:
            textField.resignFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return false
    }
    
    
}

extension UIViewController {
    
    func hideKeyboardTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }
}
