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
        Challenge(title: "Cuisiner une spécialité de votre region avec un ingrédient fare, exemple:(Pomme de terre)", points: 20),
        Challenge(title:"Révisiter un classique de la cuisine du monde", points: 10),
        Challenge(title: "Produire une recette avec ce que tu as dans ton frigo", points: 30),
        Challenge(title:"Cuisiner en famille avec une photo à poster à la fin", points: 50),
        Challenge(title: "Faire un dessert sans sucre", points: 10),
        Challenge(title: "Préparer un repas pour au moins de 5€", points: 30),
        Challenge(title: "Réussir une cuisson parfaite d'un oeuf mollet", points: 50),
        Challenge(title: "Réproduire un plat populaire en changeant l'ingrédient principal par un que t'aurais jamais mangé", points: 50),
        Challenge(title: "Cuisiner un plat d'un continent tiré au hasard", points: 40),
        Challenge(title: "Monter une mayonnaise à la main", points: 30),
        Challenge(title: "Réaliser une pâte maison", points: 20),
        Challenge(title: "Cuisiner sans utiliser le feu", points: 20)
    ]
    
    func fetchAll() -> [Challenge] {
        return allChallenges
    }
    
    func fetchShuffledChallenges() -> [Challenge] {
        return allChallenges.shuffled()
    }
}
