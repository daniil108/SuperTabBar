//
//  ExampleList.swift
//  Example
//
//  Created by Daniil Sentsov on 15/07/2024.
//

import SwiftUI

struct ExampleList: View {
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    DefaultView()
                } label: {
                    Text("Default tab bar")
                }
                NavigationLink {
                    LearnView()
                } label: {
                    Text("Learn tab bar")
                }
                NavigationLink {
                    ActiveButtonView()
                } label: {
                    Text("Tab bar with active button")
                }
                NavigationLink {
                    FloatingView()
                } label: {
                    Text("Floating tab bar")
                }
            }
            .navigationTitle("Super TabBar Demo")
        }
    }
    
}

#Preview {
    ExampleList()
}
