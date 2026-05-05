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

protocol SortedUsersProvider {
    func fetchAllSortedUsers() -> [User]
}

struct UserService: UserProvider, SessionProvider, SortedUsersProvider {
    private var allUsers: [User] = [
        User(firstName: "Lucas", lastName: "Bernard", avatarImage: "avatar2", genre: .man, xp: 13000, points: 2500, rank: 1, registeredRecipes: [], badges: []),
        User(firstName: "Emma", lastName: "Richard", avatarImage: "avatar3", genre: .woman, xp: 12300, points: 1800, rank: 2, registeredRecipes: [], badges: []),
        User(firstName: "Nathan", lastName: "Durand", avatarImage: "avatar4", genre: .man, xp: 11775, points: 1200, rank: 3, registeredRecipes: [], badges: []),
        User(firstName: "Chloé", lastName: "Morel", avatarImage: "avatar5", genre: .woman, xp: 6100, points: 800, rank: 55, registeredRecipes: [], badges: []),
        User(firstName: "Marc", lastName: "Leroy", avatarImage: "avatar1", genre: .man, xp: 5900, points: 750, rank: 56, registeredRecipes: [], badges: []),
        User(firstName: "Léa", lastName: "Petit", avatarImage: "avatar6", genre: .woman, xp: 5700, points: 300, rank: 57, registeredRecipes: [], badges: [])
    ]
    
    var currentUser: User
    
    init(recipeService: RecipeProvider = RecipeService(), badgeService: BadgeProvider = BadgeService()) {
        self.currentUser = allUsers[4]
        // Select 6 first recipes just for mockup
        self.currentUser.registeredRecipes = Array(recipeService.fetchAll().prefix(6))
        self.currentUser.badges = Array(badgeService.fetchAll())
    }
    
    func fetchAll() -> [User] {
        return allUsers
    }
    
    func fetchAllSortedUsers() -> [User] {
        return allUsers.sorted { $0.rank < $1.rank }
    }
}
