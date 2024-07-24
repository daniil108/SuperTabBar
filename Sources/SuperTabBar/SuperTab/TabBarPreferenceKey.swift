//
//  TabBarPreferenceKey.swift
//  SuperTabBar
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

/// `TabBarPreferenceKey` is a structure that defines a preference key for storing tab items.
struct TabBarPreferenceKey<Item: SuperTab>: PreferenceKey {
    
    /// The default value for the preference key, which is an empty array of items.
    static var defaultValue: [Item] {
        return .init()
    }
    
    /// Reduces multiple values into a single value by appending the next value to the current value.
    /// - Parameters:
    ///   - value: The current value of the preference key.
    ///   - nextValue: A closure that returns the next value to be reduced.
    static func reduce(value: inout [Item], nextValue: () -> [Item]) {
        value.append(contentsOf: nextValue())
    }
    
}
