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
        NavigationStack {
            ZStack {
                Color(.brightSnow)
                    .ignoresSafeArea()
                
                ScrollView {
                    // Présentation de l'utilisateur
                    
                    VStack(spacing: 16) {
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
                        }
                        
                        Spacer()
                        
                        // Recette du jour
                        
                        Text("La recette du jour")
                            .font(.pageTitle)
                            .foregroundStyle(.richMahogany)
                        
                        NavigationLink {
                            RecipeDetailView(recipe: viewModel.dailyRecipe)
                        } label: {
                            RecipeCard(recipe: viewModel.dailyRecipe)
                        }
                        
                        Divider()
                        
                        // Section Recommandations
                        
                        Text("Recommandations")
                            .font(.pageTitle)
                            .foregroundStyle(.richMahogany)
                        
                        ForEach(viewModel.recipes) { recipe in
                            NavigationLink {
                                RecipeDetailView(recipe: recipe)
                            } label: {
                                RecipeCard(recipe: recipe)
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    RecipeListView()
}
