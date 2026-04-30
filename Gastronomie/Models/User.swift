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
    let point: Int
    let rank: Int
    let registredRecipes: [Recipe]
    // Pas encore de badge
    //let badges: [Badge]
}

//let profile = User(firstName: "Léa", lastName: "Dufour", avatarImage: "https://avatars.dicebear.com/api/male/1234567890.svg", genre: .female, xp: 100, point: 100, rank: 1, registredRecipes: [])
