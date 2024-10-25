//
//  FloatingView.swift
//  Example
//
//  Created by Daniil Sentsov on 22/07/2024.
//

import SwiftUI
import SuperTabBar

struct FloatingView: View {
    
    @State private var isPresented = false
    @State private var selectedTab = FloatingTab.boat
    
    var body: some View {
        SuperTabBar(selection: $selectedTab, animation: .spring()) {
            Text("Car")
                .tabItem(for: FloatingTab.car)
            Text("Boat")
                .tabItem(for: FloatingTab.boat)
            Text("Truck")
                .tabItem(for: FloatingTab.truck)
        }
        .tabBarStyle(FloatingTabBarStyle())
    }
}

#Preview {
    FloatingView()
}
