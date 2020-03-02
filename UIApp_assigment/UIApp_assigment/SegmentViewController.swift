//
//  SegmentViewController.swift
//  UIApp_assigment
//
//  Created by Shreyansh Raj on 27/02/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {

    @IBOutlet weak var Segment: UISegmentedControl!
    @IBOutlet weak var SegmentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func SegmentAction(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            SegmentButton.setTitle("Employer Segment Selected", for: .normal)
        default:
            SegmentButton.setTitle("Employee Segment Selected", for: .normal)

        }
    }
    

}
