//
//  ActiveButtonTabBarStyle.swift
//  Example
//
//  Created by Daniil Sentsov on 19/07/2024.
//

import SwiftUI
import SuperTabBar

struct ActiveButtonTabBarStyle: TabBarStyle {
    
    var onButtonClicked: () -> Void
    
    public func tabBar(with geometry: GeometryProxy, itemsView: @escaping () -> AnyView) -> some View {
        VStack(spacing: 0.0) {
            Button {
                onButtonClicked()
            } label: {
                ZStack {
                    Circle()
                        .fill(.indigo)
                        .frame(width: 52, height: 52)
                    Image("camera")
                        .foregroundColor(.white)
                }
            }
            .padding(.bottom, -26)
            ZStack {
                ActiveShape()
                    .shadow(color: Color(UIColor.black.withAlphaComponent(0.3)), radius: 8)
                    .foregroundColor(Color.indigo)
                itemsView()
            }
            .padding(.bottom, geometry.safeAreaInsets.bottom)
            .frame(height: 70 + geometry.safeAreaInsets.bottom)
        }
    }
    
}
