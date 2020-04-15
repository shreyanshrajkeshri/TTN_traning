//
//  Module.swift
//  protocol
//
//  Created by Shreyansh Raj on 06/04/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import Foundation


public protocol DataPass {

    func getData(name: String, age: String, address: String)
}

//MARK: This is way to create optional function inside protocol

//@objc public protocol DataPass {
//
//    @objc optional func getData(name: String, age: String, address: String)
//}
