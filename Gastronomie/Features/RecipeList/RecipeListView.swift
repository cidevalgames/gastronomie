//
//  RecipeListView.swift
//  Gastronomie
//
//  Created by apprenant96 on 30/04/2026.
//
import SwiftUI

struct RecipeListView: View {
    @State var viewModel: RecipeListViewModel = RecipeListViewModel()
    
    var body: some View {
        ScrollView {
            // Présentation de l'utilisateur
            
            VStack {
                Text("Bonjour,")
                    .font(.pageTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.richMahogany)
                
                Text(viewModel.currentUserName)
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
                    
                    RecipeCard(title: viewModel.dailyRecipe.title, image: viewModel.dailyRecipe.image, description: viewModel.dailyRecipe.description)
                }
                .padding(6)
                .background(.brightSnow)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.25), radius: 8)
                
                // Section Recommandations
                
                Text("Recommandations")
                    .font(.pageTitle)
                    .foregroundStyle(.richMahogany)
                
                ForEach(viewModel.recipes) { recipe in
                    RecipeCard(title: recipe.title, image: recipe.image, description: recipe.description)
                }
            }
            .padding()
        }
    }
}

#Preview {
    RecipeListView()
}
