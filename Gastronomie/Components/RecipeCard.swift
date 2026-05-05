//
//  RecipeCard.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import SwiftUI

struct RecipeCard: View {
    var title: String
    var image: String
    var description: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 100)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 0)
            
            VStack {
                Text(title)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                    .font(.recipeCardTitle)
                
                Spacer()
                Text(description)
                .font(.recipeCardDetail)
                .lineLimit(3)
            }
        }
        .padding(6)
        .background(.brightSnow)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.25), radius: 8)
    }
}

#Preview {
    RecipeCard(title: Recipe.preview.title, image: Recipe.preview.image, description: Recipe.preview.description)
}
