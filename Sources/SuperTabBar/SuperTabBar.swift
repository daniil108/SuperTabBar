//
//  SuperTabBar.swift
//  Example
//
//  Created by Daniil Sentsov on 06/03/2024.
//

import SwiftUI

public struct SuperTabBar<TabItem: SuperTab>: View {
    
    @Binding private var selection: TabItem
    @State private var items: [TabItem]
    
    init(selection: Binding<TabItem>) {
        self._selection = selection
        self._items = .init(initialValue: .init())
    }
    
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
}
