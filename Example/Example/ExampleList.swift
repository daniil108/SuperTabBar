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
                    Text("Default view")
                }
                NavigationLink {
                    LearnView()
                } label: {
                    Text("Learn view")
                }
            }
            .navigationTitle("Super TabBar Demo")
        }
    }
    
}

#Preview {
    ExampleList()
}
