//
//  ChallengeService.swift
//  Gastronomie
//
//  Created by apprenant76 on 30/04/2026.
//

import Foundation

protocol ChallengeProvider {
    func fetchAll() -> [Challenge]
}

protocol ShuffledChallengesProvider {
    func fetchShuffledChallenges() -> [Challenge]
}

struct ChallengeService: ChallengeProvider, ShuffledChallengesProvider {
    private let allChallenges: [Challenge] = [
        Challenge(title: "Cuisiner une recette avec une difficulté de 3 étoiles", points: 10),
        Challenge(title: "Mettre une recette en favoris", points: 20),
        Challenge(title: "Participer à un tirage au sort", points: 50)
    ]
    
    func fetchAll() -> [Challenge] {
        return allChallenges
    }
    
    func fetchShuffledChallenges() -> [Challenge] {
        return allChallenges.shuffled()
    }
}
