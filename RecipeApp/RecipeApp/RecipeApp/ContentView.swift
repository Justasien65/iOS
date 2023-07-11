//
//  ContentView.swift
//  RecipeApp
//
//  Created by Roy Welborn on 6/21/23.
//

import SwiftUI

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let ingredients: [String]
    let description: String
}

struct ContentView: View {
    let recipes = [
        Recipe(name: "Fried Egg", ingredients: ["Bird Egg"], description: "A simple meal made by getting an egg and frying it."),
        Recipe(name: "Monster Cake", ingredients: ["Monster Extract", "Tabantha Wheat", "Cane Sugar", "Goat Butter", "Monster Extract"], description: "A cake made by adding Monster Extract to the batter."),
        // Add more recipes here...
    ]
    
    var body: some View {
        List(recipes) { recipe in
            VStack(alignment: .leading) {
                Text(recipe.name)
                    .font(.headline)
                Text("Ingredients: \(recipe.ingredients.joined(separator: ", "))")
                    .font(.subheadline)
                Text(recipe.description)
                    .font(.body)
            }
        }
    }
}

@main
struct RecipesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
