//
//  SearchBarViewModel.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import Foundation
import Observation

@Observable
class SearchBarViewModel {
    private let recipeService: RecipeProvider & RecipeSearchable
    
    var searchTerm: String = ""
    
    init(recipeService: RecipeProvider & RecipeSearchable = RecipeService()) {
        self.recipeService = recipeService
    }
    
    var categories: [String] {
        Category.allCases.map(\.rawValue)
    }
    
    var filteredRecipes: [Recipe] {
        recipeService.filter(searchTerm: searchTerm)
    }
    
    var emptySearchTerm: Bool {
        searchTerm.isEmpty
    }
}
