//
//  SuperTab.swift
//  Example
//
//  Created by Daniil Sentsov on 06/03/2024.
//

import SwiftUI

public protocol SuperTab: Hashable {

    var icon: String { get }
    
    var selectedIcon: String { get }
    
    var title: String { get }
    
    var displayTitleSelected: Bool { get }
    
    var view: AnyView { get }
    
}
