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
        Challenge(title: "Participer à un tirage au sort", points: 50),
        Challenge(title: "Cuisiner une spécialité de votre region avec un ingrédient typique", points: 20),
        Challenge(title: "Revisiter un classique de la cuisine du monde", points: 10),
        Challenge(title: "Faire un dessert sans sucre", points: 10),
        Challenge(title: "Préparer un repas pour moins de 5€", points: 30),
        Challenge(title: "Reproduire un plat populaire en changeant l'ingrédient principal", points: 50),
        Challenge(title: "Cuisiner un plat africain", points: 40),
        Challenge(title: "Faire une recette sans utiliser le feu", points: 20)
    ]
    
    func fetchAll() -> [Challenge] {
        return allChallenges
    }
    
    func fetchShuffledChallenges() -> [Challenge] {
        return allChallenges.shuffled()
    }
}
