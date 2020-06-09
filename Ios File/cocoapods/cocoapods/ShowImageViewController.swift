//
//  ShowImageViewController.swift
//  cocoapods
//
//  Created by Shreyansh Raj on 20/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit
import Alamofire

class ShowImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var urlString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        setImage()
        
    }
    
    func passURL(urlString: String) {
        self.urlString = urlString
    }
    
    func setImage() {
        
        let remoteImageURL = URL(string: urlString)
        
        Alamofire.request(remoteImageURL!).responseData { response in
            if response.error == nil {
                if let imageData = response.data {
                    self.imageView.image = UIImage(data: imageData)
                }
            }
        }
    }

}
