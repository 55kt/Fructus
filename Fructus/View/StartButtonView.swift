//
//  StartButtonView.swift
//  Fructus
//
//  Created by Vlad on 9/12/24.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } // Button
        .accentColor(Color.white)
    }
}

// MARK: - Preview
#Preview {
    StartButtonView()
}
