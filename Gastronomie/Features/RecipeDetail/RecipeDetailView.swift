//
//  RecipeDetailView.swift
//  Gastronomie
//
//  Created by apprenant99 on 05/05/2026.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    
    @State var viewModel: RecipeDetailViewModel = RecipeDetailViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 32) {
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 344, height: 260)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    VStack(spacing: 8) {
                        Text(recipe.title)
                            .font(.recipeDetailTitle)
                            .foregroundStyle(Color.richMahogany)
                        
                        DifficultyIndicator(difficulty: recipe.stats.difficulty)
                            .foregroundStyle(Color.yellow)
                            .frame(height: 24)
                        
                        HStack(spacing: 4) {
                            Image(systemName: "clock")
                            Text("45 min")
                            Text("•")
                            Image(systemName: "arrow.up.circle")
                            Text("650 xp")
                            Text("•")
                            Image(systemName:"bitcoinsign.circle")
                            Text("80")
                            Text("•")
                            Image(systemName: "person.circle")
                            Text("4 personnes")
                        }
                        .font(.recipeDetailInfo)
                        .foregroundStyle(Color.richMahogany)
                    }
                    
                    VStack (alignment: .leading, spacing: 16){
                        Text(recipe.description)
                            .font(.recipeDetailBody)
                            .foregroundStyle(Color.richMahogany)
                        
                        // Matériel
                        
                        Text("Matériel")
                            .font(.recipeDetailH2)
                            .foregroundStyle(Color.richMahogany)
                        
                        VStack(alignment: .leading) {
                            ForEach(recipe.details.kitchenEquipments, id: \.self){ equipment in
                                Text("• \(equipment)")
                                    .font(.recipeDetailBody)
                                    .foregroundStyle(Color.richMahogany)
                            }
                        }
                        
                        Text("Ingrédients")
                            .font(.recipeDetailH2)
                            .foregroundStyle(Color.richMahogany)
                        
                        VStack(alignment: .leading) {
                            ForEach(recipe.details.ingredients, id: \.self){ ingredient in
                                Text("• \(ingredient)")
                                    .font(.recipeDetailBody)
                                    .foregroundStyle(Color.richMahogany)
                            }
                        }
                        
                        Text("Recette")
                            .font(.recipeDetailH2)
                            .foregroundStyle(Color.richMahogany)
                        
                        VStack(alignment: .leading, spacing: 16) {
                            ForEach(recipe.details.instructions, id: \.self){ instruction in
                                Text("• \(instruction)")
                                    .font(.recipeDetailBody)
                                    .foregroundStyle(Color.richMahogany)
                            }
                        }
                        
                    }
                    VStack(spacing: 32) {
                        Text("D'autres réalisations")
                            .font(.pageTitle)
                            .foregroundStyle(Color.richMahogany)
                        
                        InfiniteCarousel(images: Array(viewModel.getCommunityImagesArray(recipe: recipe)))
                            .frame(height: 194)
                    }
                }
                .padding()
                
            }
            .background(Color.brightSnow)
        }
    }
}


#Preview {
    RecipeDetailView(recipe: Recipe.preview)
}

