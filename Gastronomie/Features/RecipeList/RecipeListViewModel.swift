//
//  RecipeListViewModel.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import Foundation
import Observation

@Observable
class RecipeListViewModel {
    private let recipeService: RecipeProvider
    private let userService: SessionProvider
    
    init(recipeService: RecipeProvider = RecipeService(),
         userService: SessionProvider = UserService()) {
        self.recipeService = recipeService
        self.userService = userService
    }
    
    var recipes: [Recipe] {
        recipeService.fetchAll()
    }
    
    var dailyRecipe: Recipe {
        recipeService.fetchAll()[0]
    }
    
    var currentUserName: String {
        "\(userService.currentUser.firstName) \(userService.currentUser.lastName)"
    }
}
