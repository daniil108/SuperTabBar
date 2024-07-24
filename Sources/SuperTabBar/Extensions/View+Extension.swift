//
//  View+Extension.swift
//  SuperTabBar
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

/// An extension to `View` that adds a method for setting the tab item for a view.
extension View {

    /// Sets the tab item for the view using the specified item.
    /// - Parameter item: The item that conforms to `SuperTab` to be used as the tab item.
    /// - Returns: The view with the tab item modifier applied.
    public func tabItem<Item: SuperTab>(for item: Item) -> some View {
        return self.modifier(TabBarViewModifier(item: item))
    }
    
}
