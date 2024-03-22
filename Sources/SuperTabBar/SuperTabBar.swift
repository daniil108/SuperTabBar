//
//  SuperTabBar.swift
//  Example
//
//  Created by Daniil Sentsov on 06/03/2024.
//

import SwiftUI

class TabSelection<Item: SuperTab>: ObservableObject {
    @Binding var selection: Item
    
    init(selection: Binding<Item>) {
        self._selection = selection
    }
}


public struct SuperTabBar<Item: SuperTab>: View {
    
    private let items: [Item]
    private let selection: TabSelection<Item>
    
    init(items: [Item],
         selection: Binding<Item>) {
        self.items = items
        self.selection = .init(selection: selection)
    }
    
    private var tabItems: some View {
        HStack(spacing: 0) {
            ForEach(self.items, id: \.self) { item in
                if let customTabView = item.customTabView,
                   let customSelectedTabView = item.customSelectedTabView {
                    if self.selection.selection == item {
                        customSelectedTabView
                    } else {
                        customTabView
                            .onTapGesture {
                                self.selection.selection = item
                                self.selection.objectWillChange.send()
                            }
                    }
                } else {
                    VStack {
                        Image(self.selection.selection == item ? item.selectedIcon : item.icon)
                        Text(item.title)
                    }
                    .onTapGesture {
                        self.selection.selection = item
                        self.selection.objectWillChange.send()
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
    
    public var body: some View {
        ZStack {
            self.selection.selection.view
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    tabItems
                }
            }
        }
    }
    
}
