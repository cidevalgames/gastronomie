//
//  FontExtension.swift
//  Gastronomie
//
//  Created by apprenant76 on 29/04/2026.
//

import SwiftUI

extension Font {    
    static let pageTitle = Font.custom("Georgia", size: 32, relativeTo: .largeTitle)
    static let sectionTitle = Font.custom("Georgia", size: 32, relativeTo: .title)
    
    // Lotery view
    static let loteryMoney = Font.custom("Roboto", size: 20)
    
    // Buttons
    static let button = Font.custom("Roboto", size: 24)
    static let button2 = Font.custom("Roboto", size: 20)
    static let button3 = Font.custom("Roboto", size: 16)
    
    // Recipe card
    static let recipeCardTitle = Font.custom("Roboto", size: 16, relativeTo: .headline).weight(.bold)
    static let recipeCardDetail = Font.custom("Roboto", size: 10).weight(.light)
    static let recipeCardSummary = Font.custom("Roboto", size: 10)
    
    // Profile
    static let profileName = Font.custom("Roboto", size: 20).weight(.bold)
    static let profileDetail = Font.custom("Roboto", size: 12)
    static let profileRecipeTitle = Font.custom("Roboto", size: 20).weight(.medium)
    
    // Podium
    static let podiumNumber = Font.custom("Georgia-Bold", size: 20)
    
    // Challenge list
    static let challengeMoney = Font.custom("Georgia", size: 24)
    static let challengeTitle = Font.custom("Roboto", size: 20)
    
    // Leaderboard card
    static let leaderboardCardTitle = Font.custom("Roboto", size: 20).weight(.bold)
    static let leaderboardCardPosition = Font.custom("Roboto", size: 16).weight(.semibold)
    static let leaderboardCardXp = Font.custom("Roboto", size: 12)
    
    // Recipe detail
    static let recipeDetailTitle = Font.custom("Georgia", size: 24).weight(.bold)
    static let recipeDetailInfo = Font.custom("Roboto", size: 12).weight(.light)
    static let recipeDetailBody = Font.custom("Roboto", size: 16)
}

#Preview {
    VStack(alignment: .leading) {
        Text("Page title").font(.pageTitle)
        Text("Section title").font(.sectionTitle)
        
        // Lotery view
        Text("Lotery money").font(.loteryMoney)
        
        // Buttons
        Text("Button").font(.button)
        Text("Button 2").font(.button2)
        Text("Button 3").font(.button3)
        
        // Recipe card
        Text("Recipe card title").font(.recipeCardTitle)
        Text("Recipe card detail").font(.recipeCardDetail)
        Text("Recipe card summary").font(.recipeCardSummary)
        
        // Profile
        Text("Profile name").font(.profileName)
        Text("Profile detail").font(.profileDetail)
        Text("Profile recipe title").font(.profileRecipeTitle)
        
        // Podium
        Text("Podium number").font(.podiumNumber)
        
        // Challenge list
        Text("Challenge money").font(.challengeMoney)
        Text("Challenge title").font(.challengeTitle)
        
        // Leaderboard card
        Text("Leaderboard card title").font(.leaderboardCardTitle)
        Text("Leaderboard card position").font(.leaderboardCardPosition)
        Text("Leaderboard card xp").font(.leaderboardCardXp)
        
        // Recipe detail
        Text("Recipe detail title").font(.recipeDetailTitle)
        Text("Recipe detail info").font(.recipeDetailInfo)
        Text("Recipe detail body").font(.recipeDetailBody)
    }
}
