//
//  DefaultTabBarStyle.swift
//  SuperTabBar
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

/// `DefaultTabBarStyle` is a structure that conforms to the `TabBarStyle` protocol.
/// It provides a default implementation for a tab bar style.
public struct DefaultTabBarStyle: TabBarStyle {
    
    /// Generates a tab bar view using the default tab bar style.
    /// - Parameters:
    ///   - geometry: A `GeometryProxy` instance that provides the size and coordinate space of the container view.
    ///   - itemsView: A closure that returns an `AnyView` representing the tab bar items.
    /// - Returns: A view that represents the tab bar, type-erased to `some View`.
    public func tabBar(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> some View {
        VStack(spacing: 0.0) {
            Divider()
            VStack {
                itemsView()
                    .frame(height: 50)
                    .padding(.bottom, geometry.safeAreaInsets.bottom)
            }
            .background(
                Color.white
            )
            .frame(height: 50.0 + geometry.safeAreaInsets.bottom)
        }
    }
    
}
