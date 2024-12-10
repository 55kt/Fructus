//
//  ContentView.swift
//  Fructus
//
//  Created by Vlad on 8/12/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }// NavigationView
    }
}

// MARK: - Preview
#Preview {
    ContentView(fruits: fruitsData)
}
