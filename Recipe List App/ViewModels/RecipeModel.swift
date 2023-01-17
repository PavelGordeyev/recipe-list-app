//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Pavel Gordeyev on 8/2/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        // Create instance of the data service and get the data
//        let service = DataService()
        self.recipes = DataService.getLocalData()
    }
}
