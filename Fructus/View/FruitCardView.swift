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
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // Fruit Headline
                Text("Blueberries are a type of berry, a fruit produced by many plant species in the genus Ribes, specifically the genus Ribes.")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
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
