//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Vlad on 12/12/24.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundStyle(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }// if
            }// HStack
        }// VStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    SettingsRowView(name: "Developer", content: "Jimmy Cardamon / Gesti Barkas")
}
