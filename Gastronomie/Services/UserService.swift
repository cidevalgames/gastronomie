//
//  UserService.swift
//  Gastronomie
//
//  Created by apprenant76 on 30/04/2026.
//

import Foundation

protocol UserProvider {
    func fetchAll() -> [User]
}

protocol SessionProvider {
    var currentUser: User { get }
}

struct UserService: UserProvider, SessionProvider {
    private var allUsers: [User] = [
        User(firstName: "Marc", lastName: "Leroy", avatarImage: "avatar1", genre: .man, xp: 5900, points: 750, rank: 56, registeredRecipes: []),
        User(firstName: "Lucas", lastName: "Bernard", avatarImage: "avatar2", genre: .man, xp: 13000, points: 2500, rank: 1, registeredRecipes: []),
        User(firstName: "Emma", lastName: "Richard", avatarImage: "avatar3", genre: .woman, xp: 12300, points: 1800, rank: 2, registeredRecipes: []),
        User(firstName: "Nathan", lastName: "Durand", avatarImage: "avatar4", genre: .man, xp: 11775, points: 1200, rank: 3, registeredRecipes: []),
        User(firstName: "Chloé", lastName: "Morel", avatarImage: "avatar5", genre: .woman, xp: 6100, points: 800, rank: 55, registeredRecipes: []),
        User(firstName: "Léa", lastName: "Petit", avatarImage: "avatar6", genre: .woman, xp: 5700, points: 300, rank: 57, registeredRecipes: [])
    ]
    
    var currentUser: User
    
    init(recipeService: RecipeServiceProtocol = RecipeService()) {
        self.currentUser = allUsers[0]
        // Select 6 first recipes just for mockup
        self.currentUser.registeredRecipes = Array(recipeService.fetchAll().prefix(6).map{$0.id})
    }
    
    func fetchAll() -> [User] {
        return allUsers
    }
}
