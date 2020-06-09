//
//  GalleryItems.swift
//  Gallery
//
//  Created by Shreyansh Raj on 09/06/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import Foundation


protocol BaseModel: Codable{
    var id: Int {get set}
}


struct GalleryItem: BaseModel {
    
    var format: String
    var width: Float
    var height: Float
    var fileName: String
    var id: Int
    var author: String
    var author_url: String
    var post_url: String
    var thumbnailURL: String
    
    
    init(dataFromAPI: [String: Any]) {
        
        self.format = dataFromAPI["format"] as? String ?? "no data"
        self.width = dataFromAPI["width"] as? Float ?? 0.0
        self.height = dataFromAPI["height"] as? Float ?? 0.0
        self.fileName = dataFromAPI["filename"] as? String ?? ""
        self.id = dataFromAPI["id"] as? Int ?? 0
        self.author = dataFromAPI["author"] as? String ?? ""
        self.author_url = dataFromAPI["author_url"] as? String ?? ""
        self.post_url = dataFromAPI["post_url"] as? String ?? ""
        self.thumbnailURL = "https://i.picsum.photos/id/\(self.id)/200/300.jpg"
    }
    
}
