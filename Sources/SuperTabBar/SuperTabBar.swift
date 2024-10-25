//
//  SuperTabBar.swift
//  SuperTabBar
//
//  Created by Daniil Sentsov on 06/03/2024.
//

import SwiftUI

/// `SuperTabBar` is a structure that represents a customizable tab bar view.
public struct SuperTabBar<Item: SuperTab, Content: View>: View {
    
    /// The selection state of the tab bar.
    private let selection: TabSelection<Item>
    /// The content view of the tab bar.
    private let content: Content
    /// The style of the tab bar.
    private(set) var tabBarStyle: AnyTabBarStyle
    /// The items in the tab bar.
    @State private var items: [Item]
    /// The namespace of the tab bar
    @Namespace private var namespace
    /// The animation for tab selection
    private let animation: Animation?
    
    /// Initializes a new instance of `SuperTabBar` with a binding to the selected item and a content view builder.
    /// - Parameters:
    ///   - selection: A binding to the selected item.
    ///   - content: A view builder that creates the content view.
    public init(selection: Binding<Item>,
                animation: Animation? = nil,
                @ViewBuilder content: () -> Content) {
        self.selection = .init(selection: selection)
        self.animation = animation
        self.content = content()
        self.tabBarStyle = .init(barStyle: DefaultTabBarStyle())
        self._items = .init(initialValue: .init())
    }
    
    /// A computed property that generates the tab items view.
    private var tabItems: some View {
        HStack(spacing: 0) {
            ForEach(self.items, id: \.self) { item in
                if let customTabView = item.customTabView(namespace: namespace),
                   let customSelectedTabView = item.customSelectedTabView(namespace: namespace) {
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
                    VStack(spacing: 5) {
                        Image(self.selection.selection == item ? item.selectedIcon : item.icon)
                        Text(item.title)
                    }
                    .foregroundColor(self.selection.selection == item ? .accentColor : .gray)
                    .onTapGesture {
                        self.selection.selection = item
                        self.selection.objectWillChange.send()
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
    
    /// The body of the `SuperTabBar` view.
    public var body: some View {
        ZStack {
            self.content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .environmentObject(self.selection)
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    Spacer()
                    self.tabBarStyle.tabBar(with: geometry) {
                        .init(self.tabItems)
                    }
                    .animation(animation, value: self.selection.selection)
                }
                .edgesIgnoringSafeArea(.bottom)
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
        .onPreferenceChange(TabBarPreferenceKey.self) { value in
            self.items = value
        }
    }
    
}

extension SuperTabBar {

    /// Sets the style of the tab bar.
    /// - Parameter style: The new style to be applied to the tab bar.
    /// - Returns: A new `SuperTabBar` instance with the updated style.
    public func tabBarStyle<BarStyle: TabBarStyle>(_ style: BarStyle) -> Self {
        var _self = self
        _self.tabBarStyle = .init(barStyle: style)
        return _self
    }
    
}


