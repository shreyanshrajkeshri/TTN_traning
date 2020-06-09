//
//  CountriesAPIViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 08/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class CountriesAPIViewController: UIViewController {
    
    @IBOutlet weak var countriesTableView: UITableView!
    
    struct CountryDecodableStruct: Decodable {
        
        var name: String
        var capital: String
        var alpha2Code: String
        var alpha3Code: String
        var region: String
        var subregion: String
        var nativeName: String
    }
    

    var countryDetailsArray = [CountryDecodableStruct]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        countriesTableView.delegate = self
        countriesTableView.dataSource = self
        
        let nib = UINib(nibName: "CountriesTableViewCell", bundle: nil)
        countriesTableView.register(nib, forCellReuseIdentifier: "CountriesCell")
        
        
        getJSON(urlString: "https://restcountries.eu/rest/v2/all") {
            
            self.countriesTableView.reloadData()
        }
        
    }
    
    //MARK: Get JSON Function
    
    func getJSON(urlString: String, completion: @escaping ()->() ) {
        
        if let url = URL(string: urlString) {
            
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    
                    do{
                        self.countryDetailsArray = try JSONDecoder().decode([CountryDecodableStruct].self, from: data!)
                        
                        DispatchQueue.main.async {
                            completion()
                        }
                        
                    } catch {
                        print("JSON Error")
                    }
                }
                
            }.resume()
        }
    }
    
}


//MARK: TableView Extension

extension CountriesAPIViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countryDetailsArray.count
    }
    
    //MARK: Cell For Row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = countriesTableView.dequeueReusableCell(withIdentifier: "CountriesCell", for: indexPath) as! CountriesTableViewCell
        
        cell.setCountryName(countryName: countryDetailsArray[indexPath.row].name)
        cell.setCapitalName(capitalName: countryDetailsArray[indexPath.row].capital)
    
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        countriesTableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CountriesDetailsShowViewController") as! CountriesDetailsShowViewController
        
        print(countryDetailsArray[indexPath.row].alpha2Code)
        
        vc.countryName = countryDetailsArray[indexPath.row].name
        vc.capital = countryDetailsArray[indexPath.row].capital
        vc.alpha2Code = countryDetailsArray[indexPath.row].alpha2Code
        vc.alpha3Code = countryDetailsArray[indexPath.row].alpha3Code
        vc.region = countryDetailsArray[indexPath.row].region
        vc.subRegion = countryDetailsArray[indexPath.row].subregion
        vc.nativeName = countryDetailsArray[indexPath.row].nativeName
        
        self.navigationController?.present(vc, animated: true, completion: nil)
        
    }
    
}

