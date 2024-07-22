//
//  DefaultTab.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI
import SuperTabBar

enum DefaultTab {
    
    case first
    case second
    case third
    
}

extension DefaultTab: SuperTab {
    
    var icon: String {
        switch self {
        case .first:
            return "folder_unselected"
        case .second:
            return "paperplane_unselected"
        case .third:
            return "trash_unselected"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .first:
            return "folder_selected"
        case .second:
            return "paperplane_selected"
        case .third:
            return "trash_selected"
        }
    }
    
    var title: String {
        switch self {
        case .first:
            return "First"
        case .second:
            return "Second"
        case .third:
            return "Third"
        }
    }
    
    var customTabView: AnyView? {
        nil
    }
    
    var customSelectedTabView: AnyView? {
        nil
    }
    
}
