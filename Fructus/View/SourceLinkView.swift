//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Vlad on 10/12/24.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }// HStack
            .font(.footnote)
        }// GroupBox
    }
}

// MARK: - Preview
#Preview {
    SourceLinkView()
}
