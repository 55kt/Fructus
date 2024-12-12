//
//  ContentView.swift
//  Fructus
//
//  Created by Vlad on 8/12/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    } // NavigationLink
                }// ForEach
            }// List
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }// Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }// Sheet
            )// NavigationBarItems
        }// NavigationView
    }
}

// MARK: - Preview
#Preview {
    ContentView(fruits: fruitsData)
}
