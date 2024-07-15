//
//  TabBarPreferenceKey.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

struct TabBarPreferenceKey<Item: SuperTab>: PreferenceKey {
    
    static var defaultValue: [Item] {
        return .init()
    }
    
    static func reduce(value: inout [Item], nextValue: () -> [Item]) {
        value.append(contentsOf: nextValue())
    }
    
}
