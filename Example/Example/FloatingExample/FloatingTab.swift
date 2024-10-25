//
//  FloatingTab.swift
//  Example
//
//  Created by Daniil Sentsov on 22/07/2024.
//

import SwiftUI
import SuperTabBar

enum FloatingTab {
    
    case car
    case boat
    case truck
    
}

extension FloatingTab: SuperTab {
    
    var icon: String {
        switch self {
        case .car:
            return "car_unselected"
        case .boat:
            return "boat_unselected"
        case .truck:
            return "truck_unselected"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .car:
            return "car_selected"
        case .boat:
            return "boat_selected"
        case .truck:
            return "truck_selected"
        }
    }
    
    var title: String {
        ""
    }
    
    func customTabView(namespace: Namespace.ID) -> AnyView? {
        AnyView(
            VStack {
                Image(icon)
            }
            .foregroundColor(.white)
        )
    }
    
    func customSelectedTabView(namespace: Namespace.ID) -> AnyView? {
        AnyView(
            VStack {
                Image(selectedIcon)
            }
            .frame(width: 60, height: 60)
            .background(
                Circle()
                    .fill(.cyan)
                    .matchedGeometryEffect(id: "floating_tab", in: namespace)
            )
            .foregroundColor(.white)
        )
    }
    
}
