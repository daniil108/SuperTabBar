//
//  LearnView.swift
//  Example
//
//  Created by Daniil Sentsov on 06/03/2024.
//

import SwiftUI
import SuperTabBar

struct LearnView: View {
    
    @State private var selectedTab = LearnTab.cards
    
    var body: some View {
        SuperTabBar(selection: $selectedTab) {
            Text("Cards")
                .tabItem(for: LearnTab.cards)
            Text("Learn")
                .tabItem(for: LearnTab.learn)
            Text("Results")
                .tabItem(for: LearnTab.results)
            Text("Menu")
                .tabItem(for: LearnTab.menu)
        }
        .tabBarStyle(LearnTabBarStyle())
    }
}

#Preview {
    LearnView()
}
