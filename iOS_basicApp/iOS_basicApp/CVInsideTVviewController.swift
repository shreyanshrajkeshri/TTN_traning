//
//  CVInsideTVviewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 09/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class CVInsideTVviewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var moviename = ["Action", "Drama", "Science Fiction", "Kids", "Horror"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension CVInsideTVviewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 170

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return moviename.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return moviename[section]
    }
       

    
    
    
}
