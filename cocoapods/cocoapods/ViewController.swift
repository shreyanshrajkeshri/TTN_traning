//
//  ViewController.swift
//  cocoapods
//
//  Created by Shreyansh Raj on 20/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    struct AuthorModel: Codable {
        var id: String
        var author: String
        var download_url: String
    }

    @IBOutlet weak var tableView: UITableView!
    
    var result = [AuthorModel]()
    var spinner = UIActivityIndicatorView(style: .large)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
        
        //Here i Start animation spinner and add to the view
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.startAnimating()
        view.addSubview(spinner)

        spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //hide the tableview untill the data is not fetch from server
        tableView.isHidden = true

        
        let url = "https://picsum.photos/v2/list"
        
        getDataFromJSON(urlString: url) {
            
            //stop animation of spinner and show the tableview
            //also reload tableview data
            
            self.spinner.stopAnimating()
            self.tableView.isHidden = false
            self.tableView.reloadData()
        }
    }
    
    private func getDataFromJSON(urlString: String, compeltionHandler: @escaping ()->() ) {
        
        Alamofire.request(urlString, method: .get, parameters: nil, encoding: URLEncoding.default)
            .validate()
            .responseData() { [weak self] response in
                
                switch response.result {
                    
                case .success(let data):
                    
                    do {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .useDefaultKeys
                        
                        let json = try decoder.decode([AuthorModel].self, from: data)
                        self?.result = json
                        print(json)
                        
                    } catch {
                        print(error)
                    }
                    
                    
                case .failure(let error):
                    print(error)
                }
                
                //call the closure
                compeltionHandler()
        }
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.setId(id: self.result[indexPath.row].id)
        cell.setAuthor(author: self.result[indexPath.row].author)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ShowImageViewController") as! ShowImageViewController
        
        //pass the urlString to ShowImageViewController
        vc.passURL(urlString: result[indexPath.row].download_url)
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

