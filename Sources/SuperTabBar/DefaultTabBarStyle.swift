//
//  DefaultTabBarStyle.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

public struct DefaultTabBarStyle: TabBarStyle {
    
    public func tabBar(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> some View {
        VStack(spacing: 0.0) {
            Divider()
            VStack {
                itemsView()
                    .frame(height: 44)
                    .padding(.bottom, geometry.safeAreaInsets.bottom)
            }
            .background(
                Color.white
            )
            .frame(height: 50.0 + geometry.safeAreaInsets.bottom)
        }
    }
    
}
