# SuperTabBar

Highly customizable SwiftUI TabBar, which allows you to create both simple tabbars and non-standard ones with a unique design.

[![Version](https://img.shields.io/cocoapods/v/SuperTabBar.svg?style=flat)](https://cocoapods.org/pods/SuperTabBar)
[![License](https://img.shields.io/cocoapods/l/SuperTabBar.svg?style=flat)](https://cocoapods.org/pods/SuperTabBar)
[![Platform](https://img.shields.io/cocoapods/p/SuperTabBar.svg?style=flat)](https://cocoapods.org/pods/SuperTabBar)
[![Swift Version][swift-image]][swift-url]

## Demo

<img src="https://github.com/daniil108/SuperTabBar/blob/main/gifs/default.gif" width="300"/>
<img src="https://github.com/daniil108/SuperTabBar/blob/main/gifs/learn.gif" width="300"/>
<img src="https://github.com/daniil108/SuperTabBar/blob/main/gifs/active_button.gif" width="300"/>
<img src="https://github.com/daniil108/SuperTabBar/blob/main/gifs/floating.gif" width="300"/>

## Requirements

- SwiftUI
- iOS 14.0 or above

## Installation

### SPM

Add https://github.com/daniil108/SuperTabBar using Package Dependecies.

### CocoaPods

```
pod 'SuperTabBar'
```

## Usage

### Tab implementation

```swift
import SuperTabBar

enum MyTab {

    case firstTab
    case secondTab
    case thirdTab

}

extension MyTab: SuperTab {
    ...
}
```

### Tab view implementation

```swift
import SuperTabBar

struct MyView: View {
    
    @State private var selectedTab = MyTab.firstTab
    
    var body: some View {
        SuperTabBar(selection: $selectedTab) {
            Text("First screen")
                .tabItem(for: MyTab.firstTab)
            Text("Second screen")
                .tabItem(for: MyTab.secondTab)
            Text("Third screen")
                .tabItem(for: MyTab.thirdTab)
        }
    }
    
}
```


## Contributions

Any contribution is more than welcome! You can contribute through pull requests and issues on GitHub.

[swift-image]:https://img.shields.io/badge/swift-5.0-orange.svg
[swift-url]: https://swift.org/
