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
    private let recipeService: RecipeProvider
    
    init(recipeService: RecipeProvider = RecipeService()) {
        self.recipeService = recipeService
    }
    
    var categories: [String] {
        Category.allCases.map(\.rawValue)
    }
    
    var searchTerm: String = ""
}
