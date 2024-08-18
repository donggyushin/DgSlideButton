//
//  ContentView.swift
//  Example
//
//  Created by 신동규 on 8/18/24.
//

import SwiftUI
import DgSlideButton

struct ContentView: View {
    
    @State var slideButtonEnable: Bool = true
    
    var body: some View {
        VStack(spacing: 40) {
            SlideButton(themeColor: .green, placeholder: "Placeholder", completion: nil)
                .allowsHitTesting(slideButtonEnable)
                .frame(height: 60)
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
