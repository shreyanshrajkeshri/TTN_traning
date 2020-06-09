//
//  ContentView.swift
//  swiftUIDemo
//
//  Created by Shreyansh Raj on 12/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("Assignment 1"))
                {
                    NavigationLink(destination: TextSwitUIView()) {
                        Text("Text")
                    }
                    
                    NavigationLink(destination: ImageSwiftUIView()) {
                        Text("Image")
                    }
                    
                    NavigationLink(destination: VStackSwiftUIView()) {
                        Text("Vertical Stack")
                    }
                    
                    NavigationLink(destination: HStackSwiftUIView()) {
                        Text("Horizonal Stack")
                    }
                    
                    NavigationLink(destination: ButtonSwiftUIView()) {
                        Text("Button")
                    }
                    
                    NavigationLink(destination: PickerSwiftUIView()) {
                        Text("Picker")
                    }
                }
            }
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
