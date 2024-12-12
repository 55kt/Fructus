//
//  SettingsView.swift
//  Fructus
//
//  Created by Vlad on 12/12/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are natural low in fat, fiber, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamin C and much more.")
                                .font(.footnote)
                        }// HStack
                    }// GroupBox
                    
                    // MARK: - Section 2
                    
                    // MARK: - Section 3
                    
                }// VStack
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }// Button
                )// NavigationBarItems
                .padding()
            }// ScrollView
        }// NavigationStack
    }
}

// MARK: - Preview
#Preview {
    SettingsView()
}
