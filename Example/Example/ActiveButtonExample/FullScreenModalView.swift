//
//  FullScreenModalView.swift
//  Example
//
//  Created by Daniil Sentsov on 20/07/2024.
//

import SwiftUI

struct FullScreenModalView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            Button("Dismiss Modal") {
                dismiss()
            }
        }
    }
}
