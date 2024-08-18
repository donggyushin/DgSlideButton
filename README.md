# DgSlideButton

Slide Button made in SwiftUI

## Installation

### Swift Package Manager

The [Swift Package Manager](https://www.swift.org/documentation/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding `DgSlideButton` as a dependency is as easy as adding it to the dependencies value of your Package.swift or the Package list in Xcode.

```
dependencies: [
   .package(url: "https://github.com/donggyushin/DgSlideButton.git", .upToNextMajor(from: "1.0.0"))
]
```

Normally you'll want to depend on the DgSlideButton target:

```
.product(name: "DgSlideButton", package: "DgSlideButton")
```

## Usage

<div>
<img src="https://github.com/user-attachments/assets/d9627d36-ceea-475b-b7f1-d1c29561c43a" width=250 />
<img src="https://github.com/user-attachments/assets/79001fbc-6176-4fcb-b8e4-9a220426c998" width=250 />
</div>

```swift
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
```
