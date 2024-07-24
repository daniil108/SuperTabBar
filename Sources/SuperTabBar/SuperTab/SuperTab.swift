//
//  SuperTab.swift
//  SuperTabBar
//
//  Created by Daniil Sentsov on 06/03/2024.
//

import SwiftUI

/// `SuperTab` is a protocol that defines the requirements for a tab item.
public protocol SuperTab: Hashable {

    /// The icon for the tab item.
    var icon: String { get }
    
    /// The icon for the tab item when it is selected.
    var selectedIcon: String { get }
    
    /// The title of the tab item.
    var title: String { get }
    
    /// A custom view for the tab item.
    var customTabView: AnyView? { get }
    
    /// A custom view for the tab item when it is selected.
    var customSelectedTabView: AnyView? { get }
    
}

public extension SuperTab {
    
    /// The default custom view for the tab item, which is `nil`.
    var customTabView: AnyView? { nil }
    
    /// The default custom view for the tab item when it is selected, which is `nil`.
    var customSelectedTabView: AnyView? { nil }
    
}
