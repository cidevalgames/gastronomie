//
//  RecipeDetailViewModel.swift
//  Gastronomie
//
//  Created by apprenant76 on 06/05/2026.
//

import Foundation
import Observation

@Observable
class RecipeDetailViewModel {
    func getCommunityImagesArray(recipe: Recipe) -> [String] {
        Array(recipe.details.communityImages.map{ $0 })
    }
}
