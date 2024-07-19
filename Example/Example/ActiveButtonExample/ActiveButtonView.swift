//
//  ActiveButtonView.swift
//  Example
//
//  Created by Daniil Sentsov on 19/07/2024.
//

import SwiftUI
import SuperTabBar

struct ActiveButtonView: View {
    
    @State private var isPresented = false
    @State private var selectedTab = ActiveButtonTab.news
    
    var body: some View {
        SuperTabBar(selection: $selectedTab) {
            Text("News")
                .tabItem(for: ActiveButtonTab.news)
            Text("Message")
                .tabItem(for: ActiveButtonTab.message)
            Text("")
                .tabItem(for: ActiveButtonTab.camera)
            Text("Game")
                .tabItem(for: ActiveButtonTab.game)
            Text("Settings")
                .tabItem(for: ActiveButtonTab.settings)
        }
        .tabBarStyle(ActiveButtonTabBarStyle(onButtonClicked: {
            isPresented.toggle()
        }))
        .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
    }
}

#Preview {
    ActiveButtonView()
}
