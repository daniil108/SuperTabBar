//
//  TabBarViewModifier.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

struct TabBarViewModifier<Item: SuperTab>: ViewModifier {
    
    @EnvironmentObject private var selectionObject: TabSelection<Item>
    
    let item: Item
    
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
