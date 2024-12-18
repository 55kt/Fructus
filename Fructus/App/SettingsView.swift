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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Coustomization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        )
                    }
                    
                    // MARK: - Section 3
                    
                    GroupBox(label:
                                SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Jimmy / Gesti")
                        SettingsRowView(name: "Designer", content: "Gesti Barkas")
                        SettingsRowView(name: "Compatibility", content: "iOS 18.2")
                        SettingsRowView(name: "Website", linkLabel: "AlbanianDevelopers", linkDestination: "albaniandevelopers.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@albaniandevelopers", linkDestination: "twitter.com/albaniandevelopers")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0.0")
                    }// GroupBox
                    
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
