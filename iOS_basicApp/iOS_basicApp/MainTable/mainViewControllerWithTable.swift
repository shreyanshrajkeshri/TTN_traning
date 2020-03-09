//
//  mainViewControllerWithTable.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 09/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class mainViewControllerWithTable: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var dataArray = ["Assignment 1", "Assignment 2", "Assignment 3", "Assignment 4", "Assignment 5"]
    
    lazy var subViewControllers: [UIViewController] = { return [
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:
            "ViewController") as! ViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabViewController") as! MainTabViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UIPageMainViewController") as! UIPageMainViewController,
        
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarViaStoryBoard") as! TabBarViaStoryBoard ]

    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "TVCellForMainTable", bundle: nil)
        mainTableView.register(nib, forCellReuseIdentifier: "CellForMainTable")
    }
    

    
}



extension mainViewControllerWithTable: UITableViewDataSource, UITableViewDelegate {
    
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
