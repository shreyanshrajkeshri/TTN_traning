//
//  ViewController.swift
//  Gallery
//
//  Created by Shreyansh Raj on 09/06/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var galleryCollectionView: UICollectionView!
    
    
    let readAndWrite = ReadAndWrite<GalleryItem>()
    let obj = APIManager()
    var galleryItemArray : [GalleryItem]?
    
    var activityIndicator: UIActivityIndicatorView = {
        let indicatorView = UIActivityIndicatorView()
        indicatorView.hidesWhenStopped = true
        indicatorView.style = .large
        return indicatorView
    }()
    
    let ImageCVCell = "ImageCollectionViewCell"
    let imageCCell = "imageCollectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        galleryCollectionView.delegate = self
        galleryCollectionView.dataSource = self
        
        title = "Gallery"
        
        
        let nib = UINib(nibName: ImageCVCell, bundle: nil)
        galleryCollectionView.register(nib, forCellWithReuseIdentifier: imageCCell)
        
        
        addActivityIndicator()
        
        localStorage()
        
    }
    
    func addActivityIndicator() {
        
        //adding activityindicator to view
        view.addSubview(activityIndicator)
        
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityIndicator.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 100),
            activityIndicator.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            activityIndicator.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 50),
            activityIndicator.heightAnchor.constraint(equalToConstant: 100.0)
        ])
    }
    
    
    func localStorage() {
        
        DispatchQueue.global(qos: .background).async {
            
            self.obj.getImages { [weak self] (response, error) in
                
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                else{
                    self?.readAndWrite.saveToLocalStorageM(data: response as! [GalleryItem])
                    self?.galleryItemArray = self?.readAndWrite.readFromLocalStorage()
                    
                    DispatchQueue.main.async {
                        self?.galleryCollectionView.reloadData()
                    }
                }
            }
        }
        
    }
    
    
}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let galleryItem = galleryItemArray else { return 0 }
        
        return galleryItem.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageCCell, for: indexPath) as! ImageCollectionViewCell
        
        activityIndicator.startAnimating()
        
        if let thumbnailURL: String =  galleryItemArray?[indexPath.row].thumbnailURL {
            
            DispatchQueue.main.async {
                cell.cellImageView.setImageFromURL(ImageURL: thumbnailURL)
                
                
            }
        }
        activityIndicator.stopAnimating()
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (self.view.frame.width/3)-10, height: 100)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "ImageViewerViewController") as! ImageViewerViewController
        
        vc.galleryModelItem = self.galleryItemArray?[indexPath.item]
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}
