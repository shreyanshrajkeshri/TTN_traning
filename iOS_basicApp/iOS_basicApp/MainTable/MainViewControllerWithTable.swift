//
//  MainViewControllerWithTable.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 09/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class MainViewControllerWithTable: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var dataArray = ["Sign Up Form",
                     "Push And Pop",
                     "Tab Bar via Code",
                     "Page View Controller",
                     "Tab Bar Via StoryBoard",
                     "Collectionview Inside TableView",
                     "Details Add In TableView",
                     "Layout",
                     "Scroll View",
                     "Circular ImageView",
                     "Calculator",
                     "Calculator Via StackView",
                     "Stack Display",
                     "Auto Layout via Code",
                     "Countries Get API"]
    
    lazy var subViewControllers: [UIViewController] = { return [
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:
            "ViewController") as! ViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabViewController") as! MainTabViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UIPageMainViewController") as! UIPageMainViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarViaStoryBoard") as! TabBarViaStoryBoard,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CVInsideTVviewController") as! CVInsideTVviewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailsDisplayViewController") as! DetailsDisplayViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LayoutViewController") as! LayoutViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ScrollViewController") as! ScrollViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CircularImageViewController") as! CircularImageViewController,        
                
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CalculatorViewController") as! CalculatorViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CalculatorViaStackViewController") as! CalculatorViaStackViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:
            "StackViewController") as! StackViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AutoLayoutViaCodeViewController") as! AutoLayoutViaCodeViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CountriesAPIViewController") as! CountriesAPIViewController]

    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Assignment Topic"
        
        let nib = UINib(nibName: "TVCellForMainTable", bundle: nil)
        mainTableView.register(nib, forCellReuseIdentifier: "CellForMainTable")
    }
}



extension MainViewControllerWithTable: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "CellForMainTable", for: indexPath) as! TVCellForMainTable
        
        cell.setTextOnlabel(Text: dataArray[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        print(dataArray[indexPath.row])
        
    self.navigationController!.pushViewController(subViewControllers[indexPath.row], animated: true)

    }
    
    
    
}
