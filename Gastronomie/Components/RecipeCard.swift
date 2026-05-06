//
//  RecipeCard.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    
    var body: some View {
        HStack {
            Image(recipe.image)
                .resizable()
                .scaledToFill()
                .frame(width: 88, height: 88)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 0)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(recipe.title)
                    .lineLimit(1)
                    .frame(alignment: .leading)
                    .font(.recipeCardTitle)
                    .foregroundStyle(.richMahogany)
                
                DifficultyStars(stars: recipe.stats.stars)
                    .frame(height: 16)
                
                HStack(spacing: 4) {
                    Image(systemName: "clock")
                    Text("\(recipe.stats.time) min")
                    Text("•")
                    Image(systemName: "arrow.up.circle")
                    Text("\(recipe.stats.xp)")
                    Text("•")
                    Image(systemName: "bitcoinsign.circle")
                    Text("\(recipe.stats.money)")
                }
                .foregroundStyle(.darkWine)
                .font(.recipeCardDetail)
                
                Text(recipe.description)
                    .font(.recipeCardDetail)
                    .foregroundStyle(.richMahogany)
                    .lineLimit(2)
            }
        }
        .padding(6)
        .background(.brightSnow)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.25), radius: 8)
    }
}

#Preview {
    RecipeCard(recipe: Recipe.preview)
}
