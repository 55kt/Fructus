//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Vlad on 12/12/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Preview
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }// HStack
                }// ForEach
            }// DisclosureGroup
        }// Box
    }// Body
}// View

// MARK: - Preview
#Preview {
    FruitNutrientsView(fruit: fruitsData[4])
}
