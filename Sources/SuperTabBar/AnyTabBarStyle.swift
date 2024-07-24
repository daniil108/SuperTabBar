//
//  AnyTabBarStyle.swift
//  SuperTabBar
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

/// `AnyTabBarStyle` is a structure that conforms to the `TabBarStyle` protocol.
/// It serves as a type-erased wrapper around any concrete type that conforms to `TabBarStyle`,
/// enabling dynamic tab bar style selection.
public struct AnyTabBarStyle: TabBarStyle {
    
    /// A private property that holds a closure responsible for generating a tab bar view.
    /// This closure is derived from the provided `TabBarStyle` conforming instance during initialization.
    private let _makeTabBar: (GeometryProxy, @escaping () -> AnyView) -> AnyView
    
    /// Initializes a new instance of `AnyTabBarStyle` with a concrete instance of a type that conforms to `TabBarStyle`.
    /// - Parameter barStyle: An instance of a type conforming to `TabBarStyle`, whose tab bar style will be type-erased and used by this instance.
    public init<BarStyle: TabBarStyle>(barStyle: BarStyle) {
        self._makeTabBar = barStyle.tabBarErased
    }
    
    /// Generates a tab bar view using the encapsulated tab bar style.
    /// - Parameters:
    ///   - geometry: A `GeometryProxy` instance that provides the size and coordinate space of the container view.
    ///   - itemsView: A closure that returns an `AnyView` representing the tab bar items.
    /// - Returns: A view that represents the tab bar, type-erased to `some View`.
    public func tabBar(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> some View {
        return self._makeTabBar(geometry, itemsView)
    }
    
}
