//
//  VStackSwiftUIView.swift
//  swiftUIDemo
//
//  Created by Shreyansh Raj on 16/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import SwiftUI

struct VStackSwiftUIView: View {
    var body: some View {
        
        VStack {
            
            Text("Fist")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("Second")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("Three")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("Four")
                .padding(.all, 20.0)
                .lineLimit(nil)
            
            Text("Five")
                .padding(.all, 20.0)
                .lineLimit(nil)
        }
    }
}

struct VStackSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStackSwiftUIView()
    }
}
