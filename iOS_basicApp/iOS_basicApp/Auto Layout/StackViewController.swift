//
//  StackViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 16/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class StackViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var textField: UITextField!
    
    let view1 = UIView()
    let view2 = UIView()
    let view3 = UIView()
    let view4 = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = ""

    }
    
    
    @IBAction func DisplayBtnAction(_ sender: UIButton) {
        
        let value: String = textField.text!
        textField.text = ""
        
        
        stackView.removeArrangedSubview(view1)
        stackView.removeArrangedSubview(view2)
        stackView.removeArrangedSubview(view3)
        stackView.removeArrangedSubview(view4)
        
        switch value {
        case "1":
            view1.backgroundColor = .red
            stackView.addArrangedSubview(view1)
            break
            
        case "2":
            view1.backgroundColor = .red
            stackView.addArrangedSubview(view1)
            
            view2.backgroundColor = .blue
            stackView.addArrangedSubview(view2)
            break
            
        case "3":
            view1.backgroundColor = .red
            stackView.addArrangedSubview(view1)
            
            view2.backgroundColor = .blue
            stackView.addArrangedSubview(view2)
            
            view3.backgroundColor = .green
            stackView.addArrangedSubview(view3)
            break
        
        case "4":
            view1.backgroundColor = .red
            stackView.addArrangedSubview(view1)
            
            view2.backgroundColor = .blue
            stackView.addArrangedSubview(view2)
            
            view3.backgroundColor = .green
            stackView.addArrangedSubview(view3)

            view4.backgroundColor = .orange
            stackView.addArrangedSubview(view4)
            break
            
        default:
            
            label.text = "Wrong Choice"
        }
        
    }
    
}
