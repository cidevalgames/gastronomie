//
//  Recipe.swift
//  Gastronomie
//
//  Created by apprenant76 on 28/04/2026.
//

import Foundation

struct Recipe: Identifiable {
    let id: UUID = UUID()
    let title: String
    let image: String
    let description: String
    let stats: RecipeStats
    let details: RecipeDetails
    let categories: [Category]
}

struct RecipeStats {
    let stars: Int // between 1 and 5
    let time: Int // in minutes
    let xp: Int
    let money: Int
}

struct RecipeDetails {
    let kitchenEquipments: [String]
    let ingredients: [String]
    let instructions: [String]
    let communityImages: [String]
}

enum Category: String, CaseIterable {
    case starter = "Entrée"
    case main = "Plat principal"
    case dessert = "Dessert"
    case french = "Cuisine Française"
    case african = "Cuisine Africaine"
    case japanese = "Cuisine japonaise"
    case italian = "Cuisine Italienne"
    case indian = "Cuisine Indienne"
    case mediterranean = "Cuisine méditerranéenne"
    case vegan = "Cuisine végétarienne"
}

extension Recipe {
    static let preview: Recipe = Recipe(
        title: "Magret de Canard au Porto",
        image: "magret_canard_porto",
        description: "Maîtrisez la cuisson rosée du magret et réalisez une réduction de Porto miroir. Ce plat exige de la rigueur sur le temps de repos de la viande et la finesse d'une mousseline de carottes lisse. Un passage obligé pour ceux qui visent le niveau supérieur en cuisine traditionnelle française.",
        stats: RecipeStats(
            stars: 3,
            time: 45,
            xp: 650,
            money: 80,
        ),
        details: RecipeDetails(
            kitchenEquipments: [
                "couteau",
                "poêle",
                "bol",
                "papier aluminium",
                "assiette",
                "spatule en bois",
                "fouet"
            ],
            ingredients: [
                "2 beaux magrets de canard (env. 350g-400g)",
                "15 cl de Porto rouge",
                "1 échalote ciselée",
                "1 cuillère à café de miel",
                "30g de beurre bien froid",
                "sel, poivre du moulin"
            ],
            instructions: [
                "À l'aide d'un couteau bien aiguisé, incisez la peau du canard en formant des losanges.",
                "Placez les magrets côté peau dans une poêle froide, puis allumez le feu à intensité moyenne.",
                "Laissez fondre la graisse pendant environ 8 à 10 minutes.",
                "Retirez l'excès de graisse foncée dans un bol au fur et à mesure (ne la jetez pas, c'est de l'or liquide pour tes prochaines patates !).",
                "Une fois la peau bien dorée et croustillante, retournez les magrets et saisissez le côté chair pendant 2 à 3 minutes seulement.",
                "Sortez les magrets, enveloppez-les dans du papier aluminium et laissez-les reposer sur une assiette pendant 10 minutes.",
                "Dans la même poêle (videz le reste de gras avant), faites revenir l'échalote avec le miel jusqu'à ce qu'elle soit translucide.",
                "Déglacez avec le Porto. Grattez bien les sucs au fond de la poêle avec une spatule en bois.",
                "Laissez réduire de moitié à feu vif jusqu'à ce que le liquide soit sirupeux.",
                "Baissez le feu au minimum. Ajoutez les dés de beurre froid un par un en remuant sans arrêt avec un fouet."
            ],
            communityImages: [
                "magret_canard_porto_community_0",
                "magret_canard_porto_community_1",
                "magret_canard_porto_community_2"
            ]
        ),
        categories: [
            Category.main,
            Category.french
        ]
    )
}
