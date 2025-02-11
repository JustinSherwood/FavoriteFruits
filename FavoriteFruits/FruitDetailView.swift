//
//  FruitDetailView.swift
//  FavoriteFruits
//

import SwiftUI

struct FruitDetailView: View {
    let fruit: Fruit
    
    // TODO: Provide a callback to notify about changes
    let onFavoriteToggle: (Fruit) -> Void
    
    @State private var isFavorite: Bool
    
    init(fruit: Fruit, onFavoriteToggle: @escaping (Fruit) -> Void) {
        self.fruit = fruit
        self.onFavoriteToggle = onFavoriteToggle
        _isFavorite = State(initialValue: fruit.isFavorite)
    }
    
    var body: some View {
        VStack(spacing: 16) {
            Text(fruit.name)
                .font(.largeTitle)
            
            Text(fruit.description)
                .foregroundColor(.secondary)
            
            Toggle("Favorite", isOn: $isFavorite)
                .onChange(of: isFavorite) {
                    // Notify the parent view
                    var updatedFruit = fruit
                    updatedFruit.isFavorite = isFavorite
                    onFavoriteToggle(updatedFruit)
                }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Detail")
    }
}
