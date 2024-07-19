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
    @State private var text = ""
    
    var body: some View {
        SuperTabBar(selection: $selectedTab) {
            VStack {
                Form {
                    Text("Cards")
                    TextField("Text", text:  $text)
                }
                Spacer(minLength: 70)// Height of the tab bar
            }
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
