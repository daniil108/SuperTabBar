//
//  LearnTabBarStyle.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI
import SuperTabBar

struct LearnTabBarStyle: TabBarStyle {
    
    public func tabBar(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> some View {
        VStack(spacing: 0.0) {
            Divider()
            itemsView()
                .background(Color.purple)
                .background(
                    Rectangle()
                        .fill(Color.purple)
                        .shadow(color: .gray, radius: 3, x: 0, y: 0)
                )
                .padding(.bottom, geometry.safeAreaInsets.bottom)
                .frame(height: 70 + geometry.safeAreaInsets.bottom)
        }
    }
    
}
