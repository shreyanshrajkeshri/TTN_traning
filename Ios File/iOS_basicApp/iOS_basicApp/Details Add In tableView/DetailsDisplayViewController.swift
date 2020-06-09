//
//  DetailsDisplayViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 09/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class DetailsDisplayViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    struct Info {
        
        var name: String
        var address: String
        var age: Int
        var details: String
    }
    
    
    public static var infoArray: [Info] = [
        Info.init(name: "Shreyansh", address: "delhi", age: 23, details: "Details"),
        Info.init(name: "Shreyansh", address: "delhi", age: 23, details: "Details"),
        Info.init(name: "Shreyansh", address: "delhi", age: 23, details: "Details")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(self.addBtnAction(_:)) )
        

        
        let nib = UINib(nibName: "DetailsTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "detailsCell")
    }
    
    
    
    @objc func addBtnAction(_ sender: UIButton) {
        
        print("add")
        //tableView.reloadData()
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "DetailsViewController")
        
        self.navigationController?.present(vc, animated: true, completion: nil)

    }
    
}

extension DetailsDisplayViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DetailsDisplayViewController.infoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailsCell") as! DetailsTableViewCell
        
        cell.nameLabel.text = DetailsDisplayViewController.infoArray[indexPath.row].name
        cell.addressLabel.text = DetailsDisplayViewController.infoArray[indexPath.row].address
        cell.ageLabel.text = String(DetailsDisplayViewController.infoArray[indexPath.row].age)
        cell.detailsLabel.text = DetailsDisplayViewController.infoArray[indexPath.row].details
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 110
    }
    
    
        
    
}
