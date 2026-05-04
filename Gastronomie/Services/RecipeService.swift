//
//  RecipeService.swift
//  Gastronomie
//
//  Created by apprenant76 on 28/04/2026.
//

import Foundation

protocol RecipeProvider {
    func fetchAll() -> [Recipe]
}

struct RecipeService: RecipeProvider {
    private let allRecipes: [Recipe] = [
        // 1. Velouté Butternut & Vanille
        Recipe(
            title: "Velouté Butternut & Vanille",
            image: "veloute_butternut_vanille",
            description: "Mix douceur et exotisme ! Ce plat t'apprend à gérer les textures crémeuses et à dresser à la louche. Une entrée réconfortante qui désacralise la vanille en version salée. Idéal pour farmer tes premiers XP sans pression et valider ton tutoriel cuisine.",
            stats: RecipeStats(stars: 1, time: 30, xp: 150, money: 20),
            details: RecipeDetails(
                kitchenEquipments: ["Blender haute puissance", "Marmite", "Couteau d'office", "Chinois"],
                ingredients: [
                    "1 courge butternut d'environ 1,2 kg",
                    "2 échalotes ciselées",
                    "1 gousse d'ail",
                    "75 cl de bouillon de légumes",
                    "20 cl de crème liquide entière",
                    "1 gousse de vanille Bourbon",
                    "25g de beurre demi-sel",
                    "Sel, poivre blanc"
                ],
                instructions: [
                    "Peler la butternut, retirer les graines et tailler la chair en cubes réguliers de 2 cm.",
                    "Dans une marmite, faire suer les échalotes avec le beurre sans coloration.",
                    "Ajouter les cubes de courge et l'ail écrasé, puis mouiller avec le bouillon de légumes à hauteur.",
                    "Laisser mijoter à feu moyen pendant 20 à 25 minutes jusqu'à ce que la courge soit fondante.",
                    "Fendre la gousse de vanille en deux, gratter les grains et les ajouter à la préparation avec la crème.",
                    "Mixer longuement au blender jusqu'à obtenir une texture parfaitement lisse.",
                    "Passer au chinois pour une finition veloutée, rectifier l'assaisonnement et servir bien chaud."
                ],
                communityImages: []
            ), categories:[Category.starter]
        ),
        
        // 2. Tartare Saumon & Yuzu
        Recipe(
            title: "Tartare Saumon & Yuzu",
            image: "tartare_saumon_yuzu",
            description: "Maîtrise la découpe de précision ! Entre l'acidité du yuzu et le croquant de la pomme, ce tartare est une leçon d'équilibre. Un défi frais pour apprendre à sublimer les produits crus et soigner ton esthétique d'assiette avant de passer au niveau supérieur.",
            stats: RecipeStats(stars: 2, time: 20, xp: 300, money: 40),
            details: RecipeDetails(
                kitchenEquipments: ["Couteau de chef bien affûté", "Culs-de-poule", "Cercle de dressage"],
                ingredients: [
                    "600g de filet de saumon de qualité sashimi (sans peau)",
                    "2 pommes Granny Smith",
                    "3 cuillères à soupe de jus de Yuzu",
                    "2 cuillères à soupe d'huile d'olive extra vierge",
                    "1 bouquet de ciboulette ciselée",
                    "Fleur de sel, piment d'Espelette"
                ],
                instructions: [
                    "Placer le saumon 10 minutes au congélateur pour raffermir la chair avant la découpe.",
                    "Détailler le saumon en cubes réguliers de 0,5 cm (brunoise). Ne pas hacher la chair.",
                    "Peler et tailler les pommes en très petits dés, puis les citronner légèrement pour éviter l'oxydation.",
                    "Dans un bol, émulsionner le jus de yuzu, l'huile d'olive, le sel et le piment.",
                    "Mélanger délicatement le saumon, la pomme et la ciboulette avec la vinaigrette juste avant de servir.",
                    "Utiliser un emporte-pièce pour dresser le tartare au centre de l'assiette en pressant légèrement."
                ],
                communityImages: []
            ), categories: [Category.starter, Category.japanese]
        ),
        
        // 3. Risotto de Coquillettes Truffé
        Recipe(
            title: "Risotto de Coquillettes Truffé",
            image: "risotto_coquillettes_truffes",
            description: "Le level-up d'un plat d'enfance. Apprends la technique de l'amidon pour une onctuosité parfaite sans crème. Ce défi intermédiaire t'initie aux produits de luxe avec la truffe, tout en gardant un côté ludique, rassurant et surtout terriblement addictif.",
            stats: RecipeStats(stars: 2, time: 25, xp: 450, money: 50),
            details: RecipeDetails(
                kitchenEquipments: ["Sautante", "Spatule en bois", "Râpe fine"],
                ingredients: [
                    "400g de coquillettes",
                    "1,2L de bouillon de volaille maintenu au chaud",
                    "1 oignon jaune finement haché",
                    "10 cl de vin blanc sec",
                    "50g de parmesan fraîchement râpé",
                    "40g de beurre doux bien froid",
                    "2 cuillères à soupe d'huile de truffe"
                ],
                instructions: [
                    "Faire revenir l'oignon dans un filet d'huile sans coloration dans la sautante.",
                    "Ajouter les coquillettes et les faire 'nacrer' pendant 2 minutes en remuant sans cesse.",
                    "Déglacer avec le vin blanc et laisser évaporer complètement.",
                    "Ajouter le bouillon chaud louche après louche, en attendant l'absorption complète avant d'en remettre.",
                    "Remuer régulièrement pour libérer l'amidon. Une fois cuites, éteindre le feu.",
                    "Réaliser la 'mantecatura' en ajoutant le beurre froid et le parmesan.",
                    "Incorporer l'huile de truffe délicatement, couvrir 2 minutes avant de servir."
                ],
                communityImages: []
            ), categories: [Category.main, Category.italian]
        ),
        
        // 4. Magret de Canard au Porto
        Recipe(
            title: "Magret de Canard au Porto",
            image: "magret_canard_porto",
            description: "Maîtrisez la cuisson rosée du magret et réalisez une réduction de Porto miroir. Ce plat exige de la rigueur sur le temps de repos de la viande et la finesse d'une mousseline de carottes lisse. Un passage obligé pour ceux qui visent le niveau supérieur en cuisine traditionnelle française.",
            stats: RecipeStats(stars: 3, time: 45, xp: 650, money: 80),
            details: RecipeDetails(
                kitchenEquipments: ["couteau", "poêle", "bol", "papier aluminium", "assiette", "spatule en bois", "fouet"],
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
                    "Placez les magrets côté peau dans une poêle froide, puis allumez le feu à intensité moyenne.",
                    "Laissez fondre la graisse pendant environ 8 à 10 minutes.",
                    "Retirez l'excès de graisse foncée dans un bol au fur et à mesure (ne la jetez pas, c'est de l'or liquide pour tes prochaines patates !).",
                    "Une fois la peau bien dorée et croustillante, retournez les magrets et saisissez le côté chair pendant 2 à 3 minutes seulement.",
                    "Sortez les magrets, enveloppez-les dans du papier aluminium et laissez-les reposer sur une assiette pendant 10 minutes.",
                    "Dans la même poêle (videz le reste de gras avant), faites revenir l'échalote avec le miel jusqu'à ce qu'elle soit translucide.",
                    "Déglacez avec le Porto. Grattez bien les sucs au fond de la poêle avec une spatule en bois.",
                    "Laissez réduire de moitié à feu vif jusqu'à ce que le liquide soit sirupeux.",
                    "Baissez le feu au minimum. Ajoutez les dés de beurre froid un par un en remuant sans arrêt avec un fouet."
                ],
                communityImages: ["magret_canard_porto_community_0", "magret_canard_porto_community_1", "magret_canard_porto_community_2"]
            ), categories: [Category.main, Category.french]
        ),
        
        // 5. Cabillaud en Croûte d'Herbes
        Recipe(
            title: "Cabillaud en Croûte d'Herbes",
            image: "cabillaud_croutes_d_herbe",
            description: "Travaille les contrastes de textures ! Une croûte herbacée craquante qui protège le nacré du poisson. Ce défi te demande de dompter ton four pour une cuisson parfaite. Un rendu visuel coloré qui boostera ton score de dressage et tes chances au tirage au sort.",
            stats: RecipeStats(stars: 3, time: 40, xp: 800, money: 100),
            details: RecipeDetails(
                kitchenEquipments: ["Mixeur", "Papier sulfurisé", "Plaque de cuisson", "Sonde"],
                ingredients: [
                    "4 dos de cabillaud de 150g",
                    "100g de chapelure panko",
                    "60g de beurre pommade",
                    "1 bouquet d'herbes (persil, ciboulette, aneth)",
                    "Zeste d'un citron",
                    "Fleur de sel"
                ],
                instructions: [
                    "Hacher les herbes et les mélanger au beurre mou, à la chapelure et aux zestes.",
                    "Étaler cette pâte entre deux feuilles de papier sulfurisé sur 3mm. Placer 15 min au frais.",
                    "Détailler des rectangles de croûte de la taille des dos de poisson.",
                    "Saler le poisson, puis déposer un rectangle de croûte sur chaque morceau.",
                    "Enfourner à 200°C pendant 10 à 12 minutes (le poisson doit rester nacré).",
                    "Finir 1 minute sous le grill pour dorer la croûte."
                ],
                communityImages: []
            ), categories: [Category.main]
        ),
        
        // 6. Saint-Jacques & Espuma Chorizo
        Recipe(
            title: "Saint-Jacques & Espuma Chorizo",
            image: "saint_jacques_espuma_chorizo",
            description: "Entre dans le monde moléculaire. Apprends à utiliser le siphon pour créer un nuage léger et piquant. Le challenge : snacker tes Saint-Jacques pile au moment du service. Un plat complexe qui envoie du lourd sur ton profil et débloque des badges rares.",
            stats: RecipeStats(stars: 4, time: 50, xp: 1200, money: 180),
            details: RecipeDetails(
                kitchenEquipments: ["Siphon", "Cartouches N2O", "Poêle inox", "Passoire fine"],
                ingredients: [
                    "16 noix de Saint-Jacques",
                    "100g de chorizo taillé en dés",
                    "25 cl de crème liquide entière",
                    "10 cl de lait entier",
                    "Beurre clarifié"
                ],
                instructions: [
                    "Chauffer le lait, la crème et le chorizo. Laisser infuser 20 min à feu doux.",
                    "Mixer et passer impérativement à la passoire fine pour filtrer tous les résidus.",
                    "Verser dans le siphon, percuter les cartouches et garder au chaud au bain-marie (50°C max).",
                    "Éponger les Saint-Jacques. Chauffer la poêle jusqu'à ce qu'elle soit fumante.",
                    "Snacker les noix 1 min par face.",
                    "Dresser immédiatement avec une pointe d'espuma aérien."
                ],
                communityImages: []
            ), categories: [Category.starter]
        ),
        
        // 7. Bœuf en Croûte de Brioche
        Recipe(
            title: "Bœuf en Croûte de Brioche",
            image: "boeuf_croute_brioche",
            description: "Un raid légendaire pour les passionnés. Envelopper une pièce de viande sans détremper la pâte demande une précision de métronome. C’est le défi technique par excellence qui sépare les amateurs des futurs chefs. Prépare-toi, c'est du haut niveau !",
            stats: RecipeStats(stars: 5, time: 90, xp: 2500, money: 350),
            details: RecipeDetails(
                kitchenEquipments: ["Rouleau", "Pinceau", "Sonde de cuisson", "Film alimentaire"],
                ingredients: [
                    "800g de filet de bœuf",
                    "500g de pâte à brioche",
                    "300g de duxelles de champignons",
                    "2 jaunes d'œufs",
                    "Moutarde forte"
                ],
                instructions: [
                    "Saisir le bœuf à feu vif sur toutes ses faces. Laisser refroidir totalement.",
                    "Badigeonner la viande de moutarde froide. Envelopper dans la duxelles à l'aide d'un film alimentaire.",
                    "Étaler la pâte à brioche, y placer la viande et refermer hermétiquement.",
                    "Dorer au jaune d'œuf et insérer la sonde.",
                    "Cuire à 180°C jusqu'à 45°C à cœur (pour une cuisson saignante).",
                    "Laisser reposer 15 minutes avant de trancher."
                ],
                communityImages: []
            ), categories: [Category.main]
        ),
        
        // 8. La Sphère Chocolatée Surprise
        Recipe(
            title: "La Sphère Chocolatée Surprise",
            image: "sphere_chocolatee_surprise",
            description: "Le Boss Final. Réalise une coque en chocolat ultra-fine qui fond sous un coulis chaud. Patience, tempérage et précision de joaillier sont requis. Réussir ce plat, c'est l'assurance d'exploser le haut du tableau et de remporter les plus gros loots.",
            stats: RecipeStats(stars: 5, time: 120, xp: 3000, money: 500),
            details: RecipeDetails(
                kitchenEquipments: ["Moule demi-sphère silicone", "Thermomètre", "Poche à douille"],
                ingredients: [
                    "400g de chocolat noir (70%)",
                    "200g de fruits rouges",
                    "150ml de crème liquide",
                    "50g de sucre"
                ],
                instructions: [
                    "Tempérer le chocolat (50-55°C -> 28-29°C -> 31-32°C).",
                    "Tapisser les moules de chocolat, laisser figer et démouler délicatement avec des gants.",
                    "Remplir une demi-sphère de fruits rouges et souder avec la deuxième en chauffant les bords.",
                    "Préparer un coulis de chocolat chaud bien fluide.",
                    "Verser le coulis brûlant au moment de servir pour faire fondre la sphère."
                ],
                communityImages: []
            ), categories: [Category.dessert]
        ),
        
        // 9. Café au Maroilles
        Recipe(
            title: "Café au Maroilles",
            image: "cafe_au_maroilles",
            description: "Osez l'expérience ultime du Nord ! Ce défi vous apprend à équilibrer la puissance d'un fromage de caractère avec l'amertume d'un café de spécialité. Une recette audacieuse qui demande de la finesse pour transformer une tradition rustique en une dégustation gastronomique étonnante.",
            stats: RecipeStats(stars: 2, time: 10, xp: 400, money: 60),
            details: RecipeDetails(
                kitchenEquipments: ["Cafetière à piston", "Planche"],
                ingredients: [
                    "4 tasses de café de spécialité",
                    "200g de Maroilles AOP",
                    "4 tranches de pain au levain"
                ],
                instructions: [
                    "Préparer le café en extraction douce.",
                    "Tailler des tranches de Maroilles de 0,5cm.",
                    "Toaster le pain.",
                    "Servir le café très chaud et pratiquer l'accord traditionnel par trempage ou alternance."
                ],
                communityImages: []
            ), categories: [Category.starter]
        ),
        
        // 10. Œufs Mayonnaise
        Recipe(
            title: "Œufs Mayonnaise",
            image: "oeufs_mayonnaise",
            description: "Le pilier des bistrots parisiens. Apprenez à réaliser une mayonnaise montée à la main avec une texture de ruban et une cuisson d'œuf parfaite au degré près. Un exercice de style où la simplicité devient un art. Idéal pour valider vos bases avant de passer aux niveaux supérieurs.",
            stats: RecipeStats(stars: 1, time: 15, xp: 200, money: 30),
            details: RecipeDetails(
                kitchenEquipments: ["Fouet ballon", "Casserole", "Minuteur"],
                ingredients: [
                    "6 œufs extra-frais",
                    "1 jaune d'œuf",
                    "1 cs de moutarde",
                    "20 cl d'huile neutre",
                    "Sel, poivre blanc"
                ],
                instructions: [
                    "Cuire les œufs exactement 9 minutes dans l'eau bouillante. Refroidir en bain glacé.",
                    "Monter la mayonnaise à la main en versant l'huile en filet très mince.",
                    "Écaler les œufs et les couper en deux.",
                    "Napper chaque œuf de mayonnaise jusqu'à le masquer totalement."
                ],
                communityImages: []
            ), categories: [Category.starter, Category.french]
        )
    ]
    
    func fetchAll() -> [Recipe] {
        return allRecipes
    }
}
