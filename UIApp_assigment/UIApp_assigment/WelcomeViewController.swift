//
//  WelcomeViewController.swift
//  UIApp_assigment
//
//  Created by Shreyansh Raj on 27/02/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var TextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageView.layer.cornerRadius = ImageView.frame.size.width/2
//        text!.layer.borderWidth = 1
//        text!.layer.borderColor = UIColor.redColor().CGColor
        TextView!.layer.borderWidth = 1
//        TextView!.layer.borderColor = UIColor.green.cgColor


        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    @IBAction func nextButtonAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(identifier: "SegmentViewController")
        
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
}
