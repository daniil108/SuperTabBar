//
//  ContentView.swift
//  Example
//
//  Created by Daniil Sentsov on 06/03/2024.
//

import SwiftUI

enum Tab: Int, CaseIterable {
    
    case cards = 0
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
    
    var view: AnyView {
        switch self {
        case .cards:
            return AnyView(Text("Cards"))
        case .learn:
            return AnyView(Text("Learn"))
        case .results:
            return AnyView(Text("Results"))
        case .menu:
            return AnyView(Text("Menu"))
        }
    }
    
    var customTabView: AnyView? {
        AnyView(
            VStack {
                Image(icon)
            }
                .frame(maxWidth: .infinity, maxHeight: 58)
                .background(Color.purple)
        )
    }
    
    var customSelectedTabView: AnyView? {
        AnyView(
            VStack {
                Image(selectedIcon)
                Text(title)
            }
        )
    }
    
}

struct ContentView: View {
    
    @State private var selectedTab = Tab.cards
    
    var body: some View {
        SuperTabBar(items: Tab.allCases, selection: $selectedTab)
    }
}

#Preview {
    ContentView()
}
