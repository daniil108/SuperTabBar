//
//  AnyTabBarStyle.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

public struct AnyTabBarStyle: TabBarStyle {
    
    private let _makeTabBar: (GeometryProxy, @escaping () -> AnyView) -> AnyView
    
    public init<BarStyle: TabBarStyle>(barStyle: BarStyle) {
        self._makeTabBar = barStyle.tabBarErased
    }
    
    public func tabBar(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> some View {
        return self._makeTabBar(geometry, itemsView)
    }
    
}
