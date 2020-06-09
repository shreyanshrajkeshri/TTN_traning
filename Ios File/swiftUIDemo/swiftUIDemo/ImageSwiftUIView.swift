//
//  ImageSwiftUIView.swift
//  swiftUIDemo
//
//  Created by Shreyansh Raj on 16/03/20.
//  Copyright © 2020 Shreyansh Raj. All rights reserved.
//

import SwiftUI

struct ImageSwiftUIView: View {
    var body: some View {
        
        Image("ghost")
        .resizable()
            .frame(width: 400.0, height: 300.0)
        
    }
}

struct ImageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSwiftUIView()
    }
}
