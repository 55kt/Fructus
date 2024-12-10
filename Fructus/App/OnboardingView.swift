//
//  OnboardingView.swift
//  Fructus
//
//  Created by Vlad on 10/12/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }// Loop
            FruitCardView()
        }// TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
#Preview {
    OnboardingView()
}
