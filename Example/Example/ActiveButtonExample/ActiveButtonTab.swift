//
//  ActiveButtonTab.swift
//  Example
//
//  Created by Daniil Sentsov on 19/07/2024.
//

import SwiftUI
import SuperTabBar

enum ActiveButtonTab {
    
    case news
    case message
    case camera
    case game
    case settings
    
}

extension ActiveButtonTab: SuperTab {
    
    var icon: String {
        switch self {
        case .news:
            return "news_unselected"
        case .message:
            return "message_unselected"
        case .camera:
            return "camera"
        case .game:
            return "game_unselected"
        case .settings:
            return "settings_unselected"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .news:
            return "news_selected"
        case .message:
            return "message_selected"
        case .camera:
            return "camera"
        case .game:
            return "game_selected"
        case .settings:
            return "settings_selected"
        }
    }
    
    var title: String {
        switch self {
        case .news:
            return "News"
        case .message:
            return "Message"
        case .camera:
            return "Camera"
        case .game:
            return "Game"
        case .settings:
            return "Settings"
        }
    }
    
    func customTabView(namespace: Namespace.ID) -> AnyView? {
        if self == .camera {
            AnyView(
                ZStack {}
            )
        } else {
            AnyView(
                VStack {
                    Image(icon)
                    Text(title)
                }
                .foregroundColor(.white.opacity(0.7))
            )
        }
    }
    
    func customSelectedTabView(namespace: Namespace.ID) -> AnyView? {
        AnyView(
            VStack {
                Image(selectedIcon)
                Text(title)
            }
            .foregroundColor(.white)
        )
    }
    
}
