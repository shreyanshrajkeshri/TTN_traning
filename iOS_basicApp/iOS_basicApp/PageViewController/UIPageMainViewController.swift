//
//  UIPageMainViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 04/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class UIPageMainViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    lazy var subViewControllers: [UIViewController] = {
        return[
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "oneViewControllerForPage") as! oneViewControllerForPage,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "twoViewControllerForPage") as! twoViewControllerForPage,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "threeViewControllerForPage") as! threeViewControllerForPage
            
        
        ] }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.delegate = self

        // Do any additional setup after loading the view.
        
        setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)
    }
    
    //here we create pageviewController of scroll type
    required init?(coder: NSCoder) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }

    //here we create pageviewController of .pageCurl type its also come by default
    
//    required init?(coder: NSCoder) {
//        super.init(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
//    }

    
    //MARK: Start PageViewController
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    
    /*this is viewController Before which come with UIPageViewControllerDataSource and UIPageViewControllerDelegate option by default */
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let currentIndex: Int = subViewControllers.index(of: viewController) ?? 0
        
        if(currentIndex <= 0)
        {
            return nil
        }
        return subViewControllers[currentIndex-1]
    }
    
    /*this is viewController After which come with UIPageViewControllerDataSource and UIPageViewControllerDelegate option by default */

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentIndex: Int = subViewControllers.index(of: viewController) ?? 0
        
        if(currentIndex >= subViewControllers.count-1)
        {
            return nil
        }
        return subViewControllers[currentIndex+1]
    }
    
}
