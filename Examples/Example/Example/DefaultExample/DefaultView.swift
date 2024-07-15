//
//  DefaultView.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

struct DefaultView: View {
    
    @State private var selectedTab = DefaultTab.first
    
    var body: some View {
        SuperTabBar(selection: $selectedTab) {
            Text("First screen")
                .tabItem(for: DefaultTab.first)
            Text("Second screen")
                .tabItem(for: DefaultTab.second)
            Text("Third screen")
                .tabItem(for: DefaultTab.third)
        }
    }
    
}

#Preview {
    DefaultView()
}
