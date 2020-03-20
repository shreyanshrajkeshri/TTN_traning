//
//  DetailsViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 09/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var detailsTextField: UITextField!
    
    //take string from TextField
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.layer.cornerRadius = imageView.frame.size.height/2
        //let name: String = nameTextField.text ?? "Name"
        
        
        //This is code to make imageView clickable and in action we can perform clickable task
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(tapDetected))
        
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(singleTap)

        
    }
    
    @IBAction func submitAction(_ sender: UIButton) {
        
        let info: DetailsDisplayViewController.Info = DetailsDisplayViewController.Info(
            name: nameTextField.text ?? "Name",
            address: addressTextField.text ?? "Address",
            age: Int(ageTextField.text ?? "23") ?? 12,
            details: detailsTextField.text ?? "Details" )
        
        
        DetailsDisplayViewController.infoArray.append(info)
        
        self.dismiss(animated: true, completion: nil)
    }
    

    //ImageView Action and we neet to add @objc to fix the error which come in singleTap
    
    @objc func tapDetected() {
        
        //this is ActionSheet
        
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (alert:UIAlertAction!) -> Void in
            self.camera()
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { (alert: UIAlertAction!) -> Void in self.Gallery() }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
        return
    }
    
    
    
}


//MARK: ImagePickerController Extension

//we need to use extension both Delegate because          "myPickerController.delegate = self"

extension DetailsViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //MARK: Camera Action
    
    func camera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self;
            myPickerController.sourceType = .camera
            self.present(myPickerController, animated: true, completion: nil)
        }
    }
    
    //MARK: Gallery Action

    func Gallery() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self;
            myPickerController.sourceType = .photoLibrary
            myPickerController.allowsEditing = true
            self.present(myPickerController, animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    //MARK: Image Picker Controller Action

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true)
        {
            let pickedImage = info[.editedImage]
            self.imageView.image = pickedImage as? UIImage
        }
        
    }
}

//MARK: textField Delegate Extension

extension DetailsViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
}

