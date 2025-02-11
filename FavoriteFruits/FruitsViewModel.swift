//
//  FruitsViewModel.swift
//  FavoriteFruits
//

import Foundation

// MARK: - ViewModel
class FruitsViewModel: ObservableObject {
    @Published var fruits: [Fruit] = [
        Fruit(name: "Apple",  description: "A sweet red fruit.", isFavorite: false),
        Fruit(name: "Banana", description: "A yellow fruit, high in potassium.", isFavorite: false),
        Fruit(name: "Cherry", description: "A small red fruit, often used as a garnish.", isFavorite: false)
    ]
}
