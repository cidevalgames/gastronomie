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
    var registeredRecipes: [UUID]
    // Pas encore de badge
    //let badges: [Badge]
}

extension User {
    static var preview: User = User(
        firstName: "Marc",
        lastName: "Leroy",
        avatarImage: "avatar1",
        genre: .man,
        xp: 5900,
        points: 750,
        rank: 56,
        registeredRecipes: []
    )
    
    init(recipeService: RecipeProvider = RecipeService()) {
        let recipesIDs: [UUID] = Array(recipeService.fetchAll().prefix(6).map{$0.id})
        
        self.init(
            firstName: User.preview.firstName,
            lastName: User.preview.lastName,
            avatarImage: User.preview.avatarImage,
            genre: User.preview.genre,
            xp: User.preview.xp,
            points: User.preview.points,
            rank: User.preview.rank,
            registeredRecipes: recipesIDs
        )
    }
}
