//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Vlad on 12/12/24.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - Properties
    var labelText: String
    var labelImage: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelImage)
        }// HStack
    }// Body
}// View

// MARK: - Preview
#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
}
