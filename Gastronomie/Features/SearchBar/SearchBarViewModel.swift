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
    var filters: [Category] = []
    
    init(recipeService: RecipeProvider & RecipeSearchable = RecipeService()) {
        self.recipeService = recipeService
    }
    
    var categories: [Category] {
        Category.allCases
    }
    
    var filteredRecipes: [Recipe] {
        recipeService.filter(searchTerm: searchTerm).filter { $0.categories.contains(filters) }
    }
    
    var emptySearchTerm: Bool {
        searchTerm.isEmpty
    }
    
    func addFilter(category: Category) {
        filters.append(category)
    }
    
    func removeFilter(category: Category) {
        filters.removeAll { $0 == category }
    }
    
    func inFilters(category: Category) -> Bool {
        filters.contains(category)
    }
}
