//
//  RecipeListView.swift
//  Gastronomie
//
//  Created by apprenant96 on 30/04/2026.
//
import SwiftUI

struct RecipeListView: View {
    
    var body: some View {
        
        ScrollView {
            
            // Présentation de l'utilisateur
            
            VStack {
                Text("Bonjour,")
                    .font(.pageTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.richMahogany)
                
                Text("Marc Hamill")
                    .font(.pageTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.richMahogany)
                
                Spacer()
                
                // Recette du jour
                
                Text("La recette du jour")
                    .font(.pageTitle)
                    .foregroundStyle(.richMahogany)
                
                HStack {
                    
                    // rajouter icone étoiles
                    
                    Image(Recipe.preview.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 0)
                    
                    VStack {
                        Text("Café au Maroilles")
                            .font(.recipeCardTitle)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer()
                        
                        Text("Osez l'expérience ultime du Nord ! Ce défi vous apprend à équilibrer la puissance d'un fromage de caractère...")
                            .font(.recipeCardDetail)
                    }
                }
                .padding(6)
                .background(.brightSnow)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.25), radius: 8)
                
                // Section Recommandations
                
                Text("Recommandations")
                    .font(.pageTitle)
                    .foregroundStyle(.richMahogany)
                
                ForEach([Recipe.preview, Recipe.preview, Recipe.preview, Recipe.preview, Recipe.preview, Recipe.preview]) { recipe in
                    HStack {
                        Image(Recipe.preview.image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 0)
                        
                        VStack {
                            Text(Recipe.preview.title)
                                .frame(maxWidth: .infinity,
                                       alignment: .leading)
                                .font(.recipeCardTitle)
                            
                            Spacer()
                            Text(recipe.description)
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
            .padding()
        }
    }
}

#Preview {
    RecipeListView()
}
