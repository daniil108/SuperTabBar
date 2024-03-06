//
//  ContentView.swift
//  Example
//
//  Created by Daniil Sentsov on 06/03/2024.
//

import SwiftUI

enum Tab {
    
    case cards
    case learn
    case results
    case menu
    
}

extension Tab: SuperTab {
    
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
    
    var displayTitleSelected: Bool {
        false
    }
    
}

struct ContentView: View {
    
    @State private var selectedTab = Tab.cards
    
    var body: some View {
        SuperTabBar(selection: $selectedTab)
        Text("")
    }
}

#Preview {
    ContentView()
}
