//
//  AutoLayoutViaCodeViewController.swift
//  iOS_basicApp
//
//  Created by Shreyansh Raj on 16/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import UIKit

class AutoLayoutViaCodeViewController: UIViewController {
    
    let topLeftView = UIView()
    let topRightView = UIView()
    let bottomLeftView = UIView()
    let bottomRightView = UIView()
    
    let topLeftSubView = UIView()
    let topRightSubView = UIView()
    let bottomLeftSubView = UIView()
    let bottomRightSubView = UIView()
    
    let topLeftLabel = UILabel()
    let topRightLabel = UILabel()
    let bottomLeftLabel = UILabel()
    let bottomRightLabel = UILabel()

    
    let topLeftImageView = UIImageView()
    let topRightImageView = UIImageView()
    let bottomLeftImageView = UIImageView()
    let bottomRightImageView = UIImageView()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        createFourBaseView()
        setNSLayoutConstraintToBaseView()
        
        createFourSubView()
        setNSLayoutConstraintToSubView()
        
        createFourLabel()
        setNSLayoutConstraintToLabel()
        
        createFourImageView()
        setNSLayoutConstraintToImageView()
        
        
    }
    
    func createFourBaseView() {
        
        //set background color of all Base view
        topLeftView.backgroundColor = .green
        topRightView.backgroundColor = .yellow
        bottomLeftView.backgroundColor = .red
        bottomRightView.backgroundColor = .blue
        
        //add Base view to Main view
        view.addSubview(topLeftView)
        view.addSubview(topRightView)
        view.addSubview(bottomLeftView)
        view.addSubview(bottomRightView)

        // make transalates Auto Resizing false
        topLeftView.translatesAutoresizingMaskIntoConstraints = false
        topRightView.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftView.translatesAutoresizingMaskIntoConstraints = false
        bottomRightView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func setNSLayoutConstraintToBaseView() {
        
        //We set NSLayoutConstraint for all four view and we add .activate after NSLayoutConstraint
        
        NSLayoutConstraint.activate([
        
            topLeftView.topAnchor.constraint(equalTo: view.topAnchor),
            topLeftView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topLeftView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            topLeftView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            
            topRightView.topAnchor.constraint(equalTo: view.topAnchor),
            topRightView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topRightView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            topRightView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            
            bottomLeftView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomLeftView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomLeftView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            bottomLeftView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            
            bottomRightView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomRightView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomRightView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            bottomRightView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
        ])

    }
    
    
    func createFourSubView() {
        
        //set background color of all sub view
        topLeftSubView.backgroundColor = .white
        topRightSubView.backgroundColor = .white
        bottomLeftSubView.backgroundColor = .white
        bottomRightSubView.backgroundColor = .white
        
        //add sub view to base view
        topLeftView.addSubview(topLeftSubView)
        topRightView.addSubview(topRightSubView)
        bottomLeftView.addSubview(bottomLeftSubView)
        bottomRightView.addSubview(bottomRightSubView)
        
        //make transalates Auto Resizing false
        topLeftSubView.translatesAutoresizingMaskIntoConstraints = false
        topRightSubView.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftSubView.translatesAutoresizingMaskIntoConstraints = false
        bottomRightSubView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func setNSLayoutConstraintToSubView() {
        
        NSLayoutConstraint.activate([
        
            topLeftSubView.centerXAnchor.constraint(equalTo: topLeftView.centerXAnchor),
            topLeftSubView.centerYAnchor.constraint(equalTo: topLeftView.centerYAnchor),
            topLeftSubView.widthAnchor.constraint(equalTo: topLeftView.widthAnchor, multiplier: 0.8),
            topLeftSubView.heightAnchor.constraint(equalTo: topLeftView.heightAnchor, multiplier: 0.7),
            
            
            topRightSubView.centerXAnchor.constraint(equalTo: topRightView.centerXAnchor),
            topRightSubView.centerYAnchor.constraint(equalTo: topRightView.centerYAnchor),
            topRightSubView.widthAnchor.constraint(equalTo: topRightView.widthAnchor, multiplier: 0.8),
            topRightSubView.heightAnchor.constraint(equalTo: topRightView.heightAnchor, multiplier: 0.7),
            
            
            bottomLeftSubView.centerXAnchor.constraint(equalTo: bottomLeftView.centerXAnchor),
            bottomLeftSubView.centerYAnchor.constraint(equalTo: bottomLeftView.centerYAnchor),
            bottomLeftSubView.widthAnchor.constraint(equalTo: bottomLeftView.widthAnchor, multiplier: 0.8),
            bottomLeftSubView.heightAnchor.constraint(equalTo: bottomLeftView.heightAnchor, multiplier: 0.7),
            
            
            bottomRightSubView.centerXAnchor.constraint(equalTo: bottomRightView.centerXAnchor),
            bottomRightSubView.centerYAnchor.constraint(equalTo: bottomRightView.centerYAnchor),
            bottomRightSubView.widthAnchor.constraint(equalTo: bottomRightView.widthAnchor, multiplier: 0.8),
            bottomRightSubView.heightAnchor.constraint(equalTo: bottomRightView.heightAnchor, multiplier: 0.7)
            
        
        ])
    }
    
    func createFourLabel() {
        
        topLeftLabel.text = "Bunny"
        topRightLabel.text = "Goat"
        bottomLeftLabel.text = "Socked Emoji"
        bottomRightLabel.text = "Monkey"
        
        
        topLeftView.addSubview(topLeftLabel)
        topRightView.addSubview(topRightLabel)
        bottomLeftView.addSubview(bottomLeftLabel)
        bottomRightView.addSubview(bottomRightLabel)
        
        topLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        topRightLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomRightLabel.translatesAutoresizingMaskIntoConstraints = false
        
 
    }
    
    func setNSLayoutConstraintToLabel() {
        
        NSLayoutConstraint.activate([
            
            topLeftLabel.topAnchor.constraint(equalTo: topLeftSubView.bottomAnchor, constant: 10.0),
            topLeftLabel.centerXAnchor.constraint(equalTo: topLeftSubView.centerXAnchor),
            
            
            topRightLabel.topAnchor.constraint(equalTo: topRightSubView.bottomAnchor, constant: 10.0),
            topRightLabel.centerXAnchor.constraint(equalTo: topRightSubView.centerXAnchor),
            
            
            bottomLeftLabel.topAnchor.constraint(equalTo: bottomLeftSubView.bottomAnchor, constant: 10.0),
            bottomLeftLabel.centerXAnchor.constraint(equalTo: bottomLeftSubView.centerXAnchor),
            
            
            bottomRightLabel.topAnchor.constraint(equalTo: bottomLeftSubView.bottomAnchor, constant: 10.0),
            bottomRightLabel.centerXAnchor.constraint(equalTo: bottomRightSubView.centerXAnchor)
            
            
        ])
        
    }
    
    
    func createFourImageView() {
        
        topLeftImageView.image = #imageLiteral(resourceName: "bunny")
        topRightImageView.image = #imageLiteral(resourceName: "smile_emoji")
        bottomLeftImageView.image = #imageLiteral(resourceName: "socks")
        bottomRightImageView.image = #imageLiteral(resourceName: "monkey")
        
        topLeftSubView.addSubview(topLeftImageView)
        topRightSubView.addSubview(topRightImageView)
        bottomLeftSubView.addSubview(bottomLeftImageView)
        bottomRightSubView.addSubview(bottomRightImageView)
        
        topLeftImageView.contentMode = .scaleAspectFit
        topRightImageView.contentMode = .scaleAspectFit
        bottomLeftImageView.contentMode = .scaleAspectFit
        bottomRightImageView.contentMode = .scaleAspectFit
        
        topLeftImageView.translatesAutoresizingMaskIntoConstraints = false
        topRightImageView.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftImageView.translatesAutoresizingMaskIntoConstraints = false
        bottomRightImageView.translatesAutoresizingMaskIntoConstraints = false
        
    
    }
    
    func setNSLayoutConstraintToImageView() {
        
        NSLayoutConstraint.activate([
        
            topLeftImageView.centerXAnchor.constraint(equalTo: topLeftSubView.centerXAnchor),
            topLeftImageView.centerYAnchor.constraint(equalTo: topLeftSubView.centerYAnchor),
            topLeftImageView.heightAnchor.constraint(equalTo: topLeftSubView.heightAnchor, multiplier: 1),
            topLeftImageView.widthAnchor.constraint(equalTo: topLeftSubView.widthAnchor, multiplier: 0.5),
            
            
            topRightImageView.centerXAnchor.constraint(equalTo: topRightSubView.centerXAnchor),
            topRightImageView.centerYAnchor.constraint(equalTo: topRightSubView.centerYAnchor),
            topRightImageView.heightAnchor.constraint(equalTo: topRightSubView.heightAnchor, multiplier: 1),
            topRightImageView.widthAnchor.constraint(equalTo: topRightSubView.widthAnchor, multiplier: 0.5),
            
            
            bottomLeftImageView.centerXAnchor.constraint(equalTo: bottomLeftSubView.centerXAnchor),
            bottomLeftImageView.centerYAnchor.constraint(equalTo: bottomLeftSubView.centerYAnchor),
            bottomLeftImageView.heightAnchor.constraint(equalTo: bottomLeftSubView.heightAnchor, multiplier: 1),
            bottomLeftImageView.widthAnchor.constraint(equalTo: bottomLeftSubView.widthAnchor, multiplier: 0.5),
            
            
            bottomRightImageView.centerXAnchor.constraint(equalTo: bottomRightSubView.centerXAnchor),
            bottomRightImageView.centerYAnchor.constraint(equalTo: bottomRightSubView.centerYAnchor),
            bottomRightImageView.heightAnchor.constraint(equalTo: bottomRightSubView.heightAnchor, multiplier: 1),
            bottomRightImageView.widthAnchor.constraint(equalTo: bottomRightSubView.widthAnchor, multiplier: 0.5)

            
            
        ])
        
    }
    
    

    
}
