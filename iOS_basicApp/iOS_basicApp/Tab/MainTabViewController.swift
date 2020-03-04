//
//  MainTabViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 03/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController{
    
    let tabOneVC = TabOneViewController()
    let tabTwoVC = TabTwoViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        viewControllers = [createControllers(title: "One", VC: tabOneVC), createControllers(title: "Two", VC: tabTwoVC)]
    }
    
    func createControllers(title: String, VC: UIViewController) -> UINavigationController {
        
        let createVC = UINavigationController(rootViewController: VC)
        
        createVC.tabBarItem.title = title
        return createVC
    }
    


}
