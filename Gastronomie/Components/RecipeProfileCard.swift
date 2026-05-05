//
//  RecipeProfileCard.swift
//  Gastronomie
//
//  Created by apprenant76 on 04/05/2026.
//

import SwiftUI

struct RecipeProfileCard: View {
    
    var recipe: Recipe
    var body: some View {
        VStack {
            Image(recipe.image)
                .resizable()
                .scaledToFill()
                .frame(width: 164, height: 164)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.25), radius: 8)
            
            Text(recipe.title)
                .font(.profileRecipeTitle)
                .foregroundStyle(.richMahogany)
                .lineLimit(1)
        }
    }
}

#Preview {
    RecipeProfileCard(recipe: Recipe.preview)
}
