# DgSlideButton

Slide Button made in SwiftUI

## Installation

### Swift Package Manager

The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

Once you have your Swift package set up, adding Alamofire as a dependency is as easy as adding it to the dependencies value of your Package.swift or the Package list in Xcode.

dependencies: [
.package(url: "https://github.com/donggyushin/DgSlideButton.git", .upToNextMajor(from: "1.0.0"))
]
Normally you'll want to depend on the Alamofire target:

.product(name: "DgSlideButton", package: "DgSlideButton")
