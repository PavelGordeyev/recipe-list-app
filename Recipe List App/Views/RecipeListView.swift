//
//  ContentView.swift
//  Recipe List App
//
//  Created by Pavel Gordeyev on 8/2/22.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {

        NavigationView {
            List(model.recipes) { r in

                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        // MARK: Row Item
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                    }
                )

            }
            .navigationBarTitle("All Recipes")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
