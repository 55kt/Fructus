//
//  FruitsModel.swift
//  Fructus
//
//  Created by Vlad on 10/12/24.
//

import SwiftUI

// MARK: - Fruits data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
