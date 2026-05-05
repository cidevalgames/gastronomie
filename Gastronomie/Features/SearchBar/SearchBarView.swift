//
//  SearchBarView.swift
//  Gastronomie
//
//  Created by apprenant96 on 04/05/2026.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var searchText = ""
    
    let categories: [String] = [
        "Recettes 🇫🇷",
        "Recettes 🇯🇵",
        "Recettes 🇮🇹",
        "Recettes 🇮🇳",
        "Recettes 🌍",
        "Recettes 🇹🇷",
        "Poisson 🐟",
        "Vegan 🥦",
        "Boeuf 🥩",
        "Patisserie 🍰",
        "Poulet 🍗"
    ]
    
    //  Filtrage
    
    var filteredCategories: [String] {
        if searchText.isEmpty {
            return categories
        } else {
            return categories.filter { category in
                category.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            
            // Barre de recherche
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Search..", text: $searchText)
                
                if !searchText.isEmpty {
                    Button(action: { searchText = "" }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            
            //  Grille des catégories de recette
            
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(filteredCategories, id: \.self) { category in
                    
                    Text(category)
                        .font(.button)
                        .frame(width: 168, height: 40)
                        .background(.brightSnow)
                        .clipShape(RoundedRectangle(cornerRadius: 80))
                        .overlay(
                            RoundedRectangle(cornerRadius: 80)
                                .stroke(Color.richMahogany, lineWidth: 2))
                        .shadow(color: .black.opacity(0.25), radius: 8)
                }
            }
            .padding()
            }
            Spacer()
        
        .padding(.top)
    }
}

#Preview {
    SearchBarView()
}
