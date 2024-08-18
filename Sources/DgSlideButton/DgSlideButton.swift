// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct SlideButton: View {
    
    @State private var circleOffset: CGFloat = 0
    
    let themeColor: Color
    let placeholder: String?
    let completion: ((Bool) -> Void)?
    
    public init(
        themeColor: Color,
        placeholder: String?,
        completion: ((Bool) -> Void)?
    ) {
        self.themeColor = themeColor
        self.placeholder = placeholder
        self.completion = completion
    }
    
    public var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                Capsule()
                    .opacity(0.4)
                Capsule()
                    .opacity(0.4)
                    .padding(10)
                
                if let placeholder {
                    ZStack {
                        Text(placeholder)
                    }
                }
                
                ZStack {
                    HStack {
                        Capsule()
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [themeColor, themeColor.opacity(0.6)],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: geometry.size.height + circleOffset)
                        Spacer(minLength: 0)
                    }
                    
                    
                    HStack {
                        ZStack {
                            Circle()
                                .foregroundStyle(themeColor)
                                .padding(8)
                                
                            Image(systemName: "chevron.right.2")
                        }
                        .offset(x: circleOffset)
                        .gesture(
                            DragGesture()
                                .onChanged { gesture in
                                    let width = gesture.translation.width
                                    let maxOffset = geometry.size.width - geometry.size.height
                                    
                                    if width > 0 {
                                        circleOffset = min(width, maxOffset)
                                    }
                                }
                                .onEnded { gesture in
                                    let percentage = gesture.translation.width / geometry.size.width
                                    let maxOffset = geometry.size.width - geometry.size.height
                                    
                                    withAnimation {
                                        if percentage > 0.6 {
                                            circleOffset = maxOffset
                                            completion?(true)
                                        } else {
                                            circleOffset = 0
                                            completion?(false)
                                        }
                                    }
                                }
                        )
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    SlideButton(themeColor: .pink, placeholder: "Swipe right") { success in
        print("success is \(success)")
    }
    .frame(height: 60)
    .preferredColorScheme(.dark)
}
