//
//  ContentView.swift
//  FavoriteFruits
//

import SwiftUI

// MARK: - Views
struct ContentView: View {
    // Create an instance of the view model to be observed.
    @StateObject private var viewModel = FruitsViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit, onFavoriteToggle: { updatedFruit in
                        // TODO: Update the fruit in the array
                    })) {
                        HStack {
                            Text(fruit.name)
                            
                            // Optional: Show a star if it's favorite
                            if fruit.isFavorite {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}
