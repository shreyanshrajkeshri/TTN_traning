//
//  ApiManager.swift
//  Gallery
//
//  Created by Shreyansh Raj on 09/06/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit



enum APIError : Error{
    case noNetwork
    case undefinedFormat(String)
}

class APIManager: NSObject {
    let session = URLSession(configuration: .default)
    
    
    func getImages(completionHandler: @escaping (_ response: Any?, _ error: Error?) -> Void) {
        
        var arrayOfGalleryItem = [GalleryItem]()
        //create a request
        let request = URLRequest(url: URL(string: "https://picsum.photos/list")!)
        //create a datatask
        
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, let response = response as? HTTPURLResponse else {
                return
            }
            
            do {
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                
                if let jsonResult = jsonResult as? [[String: Any]] {
                    for item in jsonResult {
                        let newItem = GalleryItem(dataFromAPI: item)
                        arrayOfGalleryItem.append(newItem)
                    }
                    completionHandler(arrayOfGalleryItem, nil)
                }
                else{
                    completionHandler(nil, APIError.undefinedFormat("Picture Format is Undefined") )
                }
            }
                
            catch let error{
                print(error.localizedDescription)
                completionHandler(nil, error)
            }
            
        }
        
        dataTask.resume()
    }
}
