//
//  TabBarStyle.swift
//  SuperTabBar
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

/// `TabBarStyle` is a protocol that defines the requirements for a tab bar style.
public protocol TabBarStyle {
    
    /// The type of view representing the tab bar content.
    associatedtype Content: View
    
    /// Generates a tab bar view with the given geometry and items view.
    /// - Parameters:
    ///   - geometry: A `GeometryProxy` instance that provides the size and coordinate space of the container view.
    ///   - itemsView: A closure that returns an `AnyView` representing the tab bar items.
    /// - Returns: A view of type `Content` that represents the tab bar.
    func tabBar(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> Content
    
}

extension TabBarStyle {
    
    /// Generates a type-erased tab bar view with the given geometry and items view.
    /// - Parameters:
    ///   - geometry: A `GeometryProxy` instance that provides the size and coordinate space of the container view.
    ///   - itemsView: A closure that returns an `AnyView` representing the tab bar items.
    /// - Returns: A view of type `AnyView` that represents the tab bar.
    func tabBarErased(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> AnyView {
        return .init(self.tabBar(with: geometry, itemsView: itemsView))
    }
    
}
