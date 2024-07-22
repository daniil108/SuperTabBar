//
//  FloatingTab.swift
//  Example
//
//  Created by Daniil Sentsov on 22/07/2024.
//

import SwiftUI
import SuperTabBar

enum FloatingTab: Int, CaseIterable {
    
    case car = 0
    case boat
    case truck
    
}

extension FloatingTab: SuperTab {
    
    var icon: String {
        switch self {
        case .car:
            return "car_unselected"
        case .boat:
            return "boate_unselected"
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
    
    var customTabView: AnyView? {
        AnyView(
            VStack {
                Image(selectedIcon)
            }
            .foregroundColor(.white)
        )
    }
    
    var customSelectedTabView: AnyView? {
        AnyView(
            VStack {
                Image(selectedIcon)
            }
            .frame(width: 60, height: 60)
            .background(
                Circle()
                    .fill(.cyan))
            .foregroundColor(.white)
        )
    }
    
}
