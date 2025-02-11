//
//  Fruit.swift
//  FavoriteFruits
//

import Foundation

// MARK: - Model
struct Fruit: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    var isFavorite: Bool
}
