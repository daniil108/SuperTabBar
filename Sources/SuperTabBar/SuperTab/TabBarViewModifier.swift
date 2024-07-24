//
//  TabBarViewModifier.swift
//  SuperTabBar
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

/// `TabBarViewModifier` is a structure that modifies a view to act as a tab item in a tab bar.
struct TabBarViewModifier<Item: SuperTab>: ViewModifier {
    
    /// The selection state of the tab bar.
    @EnvironmentObject private var selectionObject: TabSelection<Item>
    
    /// The tab item to be represented by the view.
    let item: Item
    
    /// Modifies the content view based on the selection state.
    /// - Parameter content: The content view to be modified.
    /// - Returns: A modified view that displays the content if the item is selected, or a clear color otherwise.
    func body(content: Content) -> some View {
        Group {
            if self.item == self.selectionObject.selection {
                content
            } else {
                Color.clear
            }
        }
        .preference(key: TabBarPreferenceKey.self, value: [self.item])
    }
    
}
