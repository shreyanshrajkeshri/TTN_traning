//
//  JsonReadWrite.swift
//  Gallery
//
//  Created by Shreyansh Raj on 09/06/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import Foundation


struct ReadAndWrite<T: Codable> {
    
    func saveToLocalStorageM<T: Codable>(data: [T]) {
        
        do {
            let fileURL = try FileManager.default
                .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                .appendingPathComponent("\(T.self).json")
            
            try JSONEncoder().encode(data)
                .write(to: fileURL)
            
        } catch {
            print(error)
        }
    }
    
    func readFromLocalStorage<T: Codable>() -> [T]? {
        
        var item: [T]?
        
        do {
            let fileURL = try FileManager.default
                .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                .appendingPathComponent("\(T.self).json")
            
            let data = try Data(contentsOf: fileURL)
            let galleryItem = try JSONDecoder().decode([T].self, from: data)
            item = galleryItem
        } catch {
            print(error)
        }
        
        return item
    }
}
