//
//  TabBarStyle.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

public protocol TabBarStyle {
    
    associatedtype Content: View
    
    func tabBar(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> Content
    
}

extension TabBarStyle {
    
    func tabBarErased(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> AnyView {
        return .init(self.tabBar(with: geometry, itemsView: itemsView))
    }
    
}
