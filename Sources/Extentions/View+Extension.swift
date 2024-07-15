//
//  View+Extension.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

extension View {

    public func tabItem<Item: SuperTab>(for item: Item) -> some View {
        return self.modifier(TabBarViewModifier(item: item))
    }
    
}
