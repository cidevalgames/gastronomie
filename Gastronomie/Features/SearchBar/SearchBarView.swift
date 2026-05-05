//
//  SearchBarView.swift
//  Gastronomie
//
//  Created by apprenant96 on 04/05/2026.
//

import SwiftUI

struct SearchBarView: View {
    @State var viewModel: SearchBarViewModel = SearchBarViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                // Barre de recherche
                
                if viewModel.emptySearchTerm {
                    
                    //  Grille des catégories de recette
                    
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(viewModel.categories, id: \.self) { category in
                            
                            Text(category)
                                .font(.button3)
                                .frame(width: 168, height: 40)
                                .background(.brightSnow)
                                .clipShape(RoundedRectangle(cornerRadius: 80))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 80)
                                        .stroke(Color.richMahogany, lineWidth: 2)
                                )
                                .shadow(color: .black.opacity(0.25), radius: 8)
                        }
                    }
                    .padding()
                    
                } else {
                    List {
                        ForEach(viewModel.filteredRecipes) { recipe in
                            NavigationLink {
                                RecipeDetailView(recipe: recipe)
                            } label: {
                                SearchRecipeRow(image: recipe.image, title: recipe.title)
                            }
                        }
                    }
                }
            }
            
            Spacer()
        }
        .searchable(text: $viewModel.searchTerm, prompt: "Rechercher une recette")
    }
}

#Preview {
    SearchBarView()
}
