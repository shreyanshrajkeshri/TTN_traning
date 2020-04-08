//
//  CountriesDetailsShowViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 08/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class CountriesDetailsShowViewController: UIViewController {

    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var alpha2CodeLabel: UILabel!
    @IBOutlet weak var alpha3CodeLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var subRegionLabel: UILabel!
    @IBOutlet weak var nativeNameLabel: UILabel!
    
    
    
    var countryName = ""
    var capital = ""
    var alpha2Code = ""
    var alpha3Code = ""
    var region = ""
    var subRegion = ""
    var nativeName = ""

    
    var notFound: UIImage = #imageLiteral(resourceName: "NotFound")
    var url = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        countryNameLabel.text = countryName
        capitalLabel.text = "Capital : \(capital)"
        alpha2CodeLabel.text = "Alpha2Code : \(alpha2Code)"
        alpha3CodeLabel.text = "Alpha3Code : \(alpha3Code)"
        regionLabel.text = "Region : \(region)"
        subRegionLabel.text = "SubRegion : \(subRegion)"
        nativeNameLabel.text = "Native Name : \(nativeName)"
        
        url  = "https://www.countryflags.io/\(alpha2Code)/flat/64.png"
        
        downloadImageFromURL(urlString: url)
    }
    
    
    func downloadImageFromURL(urlString: String) {
        
        if let url = URL(string: urlString) {
            
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                if let data = data {
                    DispatchQueue.main.async {
                        
                        print(data)
                        self.flagImageView.image = UIImage(data: data) ?? self.notFound
                        
                    }
                }
                
            }.resume()
        }
    }

    

}


