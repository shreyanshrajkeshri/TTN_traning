//
//  PickerSwiftUIView.swift
//  swiftUIDemo
//
//  Created by Shreyansh Raj on 16/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import SwiftUI

struct PickerSwiftUIView: View {
    
    @State private var pickerSelectedIndex = 0
    var array = ["One", "Two", "Three", "Four", "Five"]
    
    var body: some View {
        
        VStack(spacing: 20.0) {
            
            Picker(selection: $pickerSelectedIndex, label: Text("Picker")) {
                
                ForEach(0..<array.count) {
                    Text(self.array[$0])
                        .multilineTextAlignment(.center)
                        .frame(width: 500.0)
                        .padding(.all, 10.0)
                        .foregroundColor(.black)
                }
            }
            .frame(width: UIScreen.main.bounds.width/2)
            
            Text("Selected Value Is : \(self.array[pickerSelectedIndex])")
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
        }
        .padding(.all, 20.0)
    }
}

struct PickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PickerSwiftUIView()
    }
}
