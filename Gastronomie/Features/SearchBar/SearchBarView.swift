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
            ZStack {
                Color(.brightSnow)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    // Barre de recherche
                    
                    if viewModel.emptySearchTerm {
                        
                        //  Grille des catégories de recette
                        
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(viewModel.categories, id: \.self) { category in
                                Button {
                                    if viewModel.inFilters(category: category) {
                                        viewModel.removeFilter(category: category)
                                    } else {
                                        viewModel.addFilter(category: category)
                                    }
                                } label: {
                                    FilterButton(text: category.rawValue, selected: viewModel.inFilters(category: category))
                                }
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
                        .scrollContentBackground(.hidden)
                    }
                    
                    Spacer()
                }
            }
        }
        .searchable(text: $viewModel.searchTerm, prompt: "Rechercher une recette")
    }
}

#Preview {
    SearchBarView()
}
