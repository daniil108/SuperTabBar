//
//  DefaultTab.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

enum DefaultTab: Int, CaseIterable {
    
    case first = 0
    case second
    case third
    
}

extension DefaultTab: SuperTab {
    
    var icon: String {
        switch self {
        case .first:
            return "folder"
        case .second:
            return "paperplane"
        case .third:
            return "trash"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .first:
            return "folder.fill"
        case .second:
            return "paperplane.fill"
        case .third:
            return "trash.fill"
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
    
    var displayTitleSelected: Bool {
        true
    }
    
    var customTabView: AnyView? {
        nil
    }
    
    var customSelectedTabView: AnyView? {
        nil
    }
    
}
