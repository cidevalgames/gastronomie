//
//  RecipeProfileCard.swift
//  Gastronomie
//
//  Created by apprenant76 on 04/05/2026.
//

import SwiftUI

struct RecipeProfileCard: View {
    let image: String
    let title: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 164, height: 164)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.25), radius: 8)
            
            Text(title)
                .font(.profileRecipeTitle)
                .foregroundStyle(.richMahogany)
                .lineLimit(1)
        }
    }
}

#Preview {
    RecipeProfileCard(image: Recipe.preview.image, title: Recipe.preview.title)
}
