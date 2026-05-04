//
//  User.swift
//  Gastronomie
//
//  Created by apprenant99 on 29/04/2026.
//

import Foundation

enum Genre: String {
    case woman = "Femme"
    case man = "Homme"
    case nonBinary = "Non-binaire"
    case other = "Autre"
}

struct User: Identifiable {
    let id: UUID = UUID()
    let firstName: String
    let lastName: String
    let avatarImage: String
    let genre: Genre
    let xp: Int
    let points: Int
    let rank: Int
    var registeredRecipes: [Recipe]
    //let badges: [Badge]
}

extension User {
    static var preview: User {
        return User()
    }
    
    init(recipeService: RecipeProvider = RecipeService()) {
        let recipes: [Recipe] = Array(recipeService.fetchAll().prefix(6))
        
        self.init(
            firstName: "Marc",
            lastName: "Leroy",
            avatarImage: "avatar1",
            genre: .man,
            xp: 5900,
            points: 750,
            rank: 56,
            registeredRecipes: recipes
        )
    }
}
