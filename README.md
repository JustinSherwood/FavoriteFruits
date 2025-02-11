FavoriteFruits Code Challenge
=============================

Welcome to the **FavoriteFruits** code challenge! This exercise is designed to test fundamental SwiftUI skills; lists, navigation, data flow, and state management.

Overview
--------

You will create a simple SwiftUI application that displays a list of fruit items. Each fruit has a name, description, and a favorite flag. Tapping a fruit navigates to a detail view where you can toggle its favorite status. The main list should reflect any changes when the user returns from the detail view.

Requirements
------------

1.  **Data Model**
    *   A small array of `Fruit` data (e.g., Apple, Banana, Cherry).
    *   Each `Fruit` has:
        *   A unique identifier (`id`).
        *   A name (e.g., "Apple").
        *   A description (e.g., "A sweet red fruit").
        *   A `Bool` to track `isFavorite`.
2.  **List View** (`ContentView`)
    *   Displays the list of fruits.
        *   Shows the fruit name in each row.
        *   Will indicate the favorite fruits with a star icon.
        *   Tapping a row navigates to a detail screen.
3.  **Detail View**
    *   Show the fruit’s name and description.
    *   Allow the user to toggle a fruit’s `isFavorite` status (via a `Toggle`).
    *   Ensure changes sync back to the list.
4.  **State Management**
    *   Demonstrate proper SwiftUI data flow with `@State`, `@Binding`, `@ObservedObject`, or `@StateObject`.
    *   When the user toggles `isFavorite` in the detail view, the main list view should reflect the updated value.
5.  **Time Frame**
    *   The exercise is designed to be completable in roughly **15–30 minutes**.

Getting Started
---------------

1.  **Clone or Download** this repository onto your local machine.
2.  Open the **FavoriteFruits.xcodeproj** in Xcode.
3.  Ensure you have **iOS 17** SDK or later.
4.  Select an iOS simulator (e.g., iPhone 15 Pro) and press **Run** (`Cmd + R`).

Starter Code
------------

Inside this project, you’ll find:
*   **`Fruit.swift`**: A simple `Fruit` model.
*   **`FruitsViewModel.swift`**: An `ObservableObject` that stores an array of `Fruit`s.
*   **`ContentView.swift`**: Displays a list of fruits. Contains navigation logic to a detail view.
*   **`FruitDetailView.swift`**: Shows details about a single `Fruit` and toggles its `isFavorite` status.
*   **`FavoriteFruitsApp.swift`**: Entry point for the SwiftUI app (`@main` struct).
**Note**: The code intentionally leaves room for you to implement the logic that updates the `Fruit` list when `isFavorite`changes.

What You Need to Do
-------------------

1.  **ViewModel Updates**
    *   In `ContentView`, the `FruitsViewModel` provides the list of fruits.
    *   When navigating to the `FruitDetailView`, you’ll pass a closure or binding that allows the detail view to modify the underlying `FruitsViewModel`.
2.  **FruitDetailView**
    *   Toggling `isFavorite` should call back into the parent view or view model to update the data source.
    *   You may need to use `.onChange(of:)` or a binding-based approach to sync `isFavorite` changes.
3.  **Verify the Functionality**
    *   **List**: Correctly shows all fruits, including favorite status with an icon or different styling.
    *   **Navigation**: Tapping a fruit goes to its detail view.
    *   **Detail**: Changing favorite status updates the main list when you go back.

Tips
----
        
*   **Property Wrappers**: Use `@ObservedObject`, `@State`, and `@Binding` where appropriate.
*   **Navigation**: Consider using `NavigationView` and `NavigationLink` (or `NavigationStack` on iOS 16+).

Acceptance Criteria
-------------------

1.  The app compiles and runs without errors.
2.  A list of fruits displays in `ContentView`.
3.  Tapping a fruit navigates to a detail screen showing its name, description, and favorite toggle.
4.  Changing the favorite status in the detail view updates the list when navigating back (the star icon should appear).
5.  Code demonstrates a solid understanding of basic SwiftUI patterns.

Extra Credit (Optional)
-----------------------

*   Add a search bar to filter fruits by name.
*   Persist favorite states between app launches (e.g., `UserDefaults` or Core Data).
*   Include a feature to edit fruit name or description.

License
-------

This project is provided as a **coding exercise** under an MIT License. Feel free to use, modify, and distribute.
