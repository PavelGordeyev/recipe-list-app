//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Pavel Gordeyev on 8/2/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                // MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    ForEach(recipe.ingredients) { ingredient in
                        Text("• " + ingredient.name)
                            .padding(.bottom, 1)
                    }
                }
                .padding(.horizontal)
                // MARK: Divider
                Divider()
                // MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        Text(String(index + 1) + ". " + recipe.directions[index])
                            .padding(.bottom, 3)
                    }
                }
                .padding(.horizontal)
            }
           
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recipe and pass it into the detail view
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
