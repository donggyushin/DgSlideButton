//
//  ContentView.swift
//  Example
//
//  Created by 신동규 on 8/18/24.
//

import SwiftUI
import DgSlideButton

struct ContentView: View {
    
    @State var slideButtonEnable: Bool = true // Make it false if you want to disable button
    
    var body: some View {
        SlideButton(themeColor: .green, placeholder: "Placeholder", completion: nil)
            .allowsHitTesting(slideButtonEnable)
            .frame(height: 60) // Adjust suitable height. (Button is designed for 60px)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
