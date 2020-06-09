//
//  ImageViewerViewController.swift
//  Gallery
//
//  Created by Shreyansh Raj on 09/06/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class ImageViewerViewController: UIViewController {
    
    @IBOutlet weak var galleryImage: UIImageView!
    
    var galleryModelItem: GalleryItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        galleryImage.layer.cornerRadius = 20
        galleryImage.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        DispatchQueue.main.async {
            if let galleryItem = self.galleryModelItem {
                self.galleryImage.setImageFromURL(ImageURL: galleryItem.thumbnailURL)
            }
        }
    }
    
    @IBAction func authorButtonAction(_ sender: UIButton) {
        
        if let url = URL(string: galleryModelItem!.author_url) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:])
            }
        }
    }
    
    @IBAction func downloadButtonAction(_ sender: UIButton) {
        
    }
    
    
}
