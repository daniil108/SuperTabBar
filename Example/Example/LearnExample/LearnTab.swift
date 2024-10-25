//
//  LearnTab.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI
import SuperTabBar

enum LearnTab {
    
    case cards
    case learn
    case results
    case menu
    
}

extension LearnTab: SuperTab {
    
    var icon: String {
        switch self {
        case .cards:
            return "cards_unselected"
        case .learn:
            return "learn_unselected"
        case .results:
            return "results_unselected"
        case .menu:
            return "menu_unselected"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .cards:
            return "cards_selected"
        case .learn:
            return "learn_selected"
        case .results:
            return "results_selected"
        case .menu:
            return "menu_selected"
        }
    }
    
    var title: String {
        switch self {
        case .cards:
            return "Cards"
        case .learn:
            return "Learn"
        case .results:
            return "Results"
        case .menu:
            return "Menu"
        }
    }
    
    func customTabView(namespace: Namespace.ID) -> AnyView? {
        AnyView(
            VStack {
                Image(icon)
            }
            .frame(maxWidth: .infinity)
        )
    }
    
    func customSelectedTabView(namespace: Namespace.ID) -> AnyView? {
        AnyView(
            ZStack {
                GeometryReader { geometry in
                    if self == .cards || self == .menu {
                        Rectangle()
                            .path(in: CGRect(x: self == .cards ? 0 : geometry.size.width / 2,
                                             y: 0,
                                             width: geometry.size.width / 2,
                                             height: 400))
                            .fill(.white)
                            .matchedGeometryEffect(id: "learning_tab", in: namespace)
                    }
                    RoundedRectangle(cornerRadius: 20)
                        .path(in: CGRect(x: 0,
                                         y: 0,
                                         width: geometry.size.width,
                                         height: 400))
                        .fill(.white)
                        .foregroundStyle(.background)
                        .matchedGeometryEffect(id: "learning_tab", in: namespace)
                }
                VStack {
                    Image(selectedIcon)
                    Text(title)
                        .foregroundStyle(.purple)
                }
            }
        )
    }
    
}
