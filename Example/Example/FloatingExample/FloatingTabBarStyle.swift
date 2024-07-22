//
//  FloatingTabBarStyle.swift
//  Example
//
//  Created by Daniil Sentsov on 22/07/2024.
//

import SwiftUI
import SuperTabBar

struct FloatingTabBarStyle: TabBarStyle {
    
    public func tabBar(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> some View {
        VStack(spacing: 0.0) {
            itemsView()
                .frame(width: 300, height: 70)
                .background(
                    RoundedRectangle(cornerRadius: 35)
                        .fill(Color.gray.opacity(0.2))
                        .shadow(color: .gray, radius: 3, x: 0, y: 0)
                )
                .padding(.bottom, 40)
        }
        .frame(maxWidth: .infinity)
    }
    
}
