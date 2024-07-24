//
//  TabSelection.swift
//  SuperTabBar
//
//  Created by Daniil Sentsov on 24/07/2024.
//

import SwiftUI

/// `TabSelection` is a class that conforms to the `ObservableObject` protocol.
/// It is used to manage the selection state of tabs.
class TabSelection<Item: SuperTab>: ObservableObject {
    
    /// A binding to the currently selected tab item.
    @Binding var selection: Item
    
    /// Initializes a new instance of `TabSelection` with a binding to the selected tab item.
    /// - Parameter selection: A binding to the selected tab item.
    init(selection: Binding<Item>) {
        self._selection = selection
    }
    
}
