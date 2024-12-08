//
//  FruitCardView.swift
//  Fructus
//
//  Created by Vlad on 8/12/24.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                
                // Fruit Title
                Text("Blueberry")
                
                // Fruit Headline
                
                // Button Start
            }// VStack
        }// ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"),
                                                               Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

// MARK: - Preview
#Preview(traits: .fixedLayout(width: 320, height: 640)) {
    FruitCardView()
}
