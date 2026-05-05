//
//  RecipeDetailView.swift
//  Gastronomie
//
//  Created by apprenant99 on 05/05/2026.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        NavigationStack{
            ScrollView{
                HStack{
                    Image(recipe.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350, height: 350)
                        .cornerRadius(24)
                    
                    
                    
                }
                HStack{
                    Text(recipe.title)
                        .font(.recipeDetailTitle)
                        .foregroundStyle(Color.richMahogany)
                    
                }
                HStack{
                    Image(systemName:"star.fill")
                    Image(systemName:"star.fill")
                    Image(systemName:"star.fill")
                    Image(systemName:"star")
                    Image(systemName:"star")
                        .foregroundStyle(Color.yellow)
                }
                .foregroundStyle(Color.yellow)
                HStack{
                    Image(systemName: "clock")
                    Text("45 min")
                    Image(systemName: "arrow.up.circle")
                    Text("650 xp")
                    Image(systemName:"bitcoinsign.circle")
                    Text("80")
                    Image(systemName: "person.circle")
                    Text("4 personnes")
                    
                }
                .font(.recipeDetailInfo)
                .foregroundStyle(Color.richMahogany)
                VStack (alignment: .leading){
                    Spacer()
                    Text(recipe.description)
                        .font(.recipeDetailBody)
                        .foregroundStyle(Color.richMahogany)
                    Spacer()
                    Text("Matériel")
                        .font(.recipeDetailH2)
                        .foregroundStyle(Color.richMahogany)
                    
                    ForEach(recipe.details.kitchenEquipments, id: \.self){ equipment in
                        Text("• \(equipment)")
                            .font(.recipeDetailBody)
                            .foregroundStyle(Color.richMahogany)
                    }
                    Spacer()
                    Text("Ingrédients")
                        .font(.recipeDetailH2)
                        .foregroundStyle(Color.richMahogany)
                    ForEach(recipe.details.ingredients, id: \.self){ ingredient in
                        Text("• \(ingredient)")
                            .font(.recipeDetailBody)
                            .foregroundStyle(Color.richMahogany)
                    }
                    Spacer()
                    Text("Recette")
                        .font(.recipeDetailH2)
                        .foregroundStyle(Color.richMahogany)
                    ForEach(recipe.details.instructions, id: \.self){ instruction in
                        Text("• \(instruction)")
                            .font(.recipeDetailBody)
                            .foregroundStyle(Color.richMahogany)
                        
                    }
                   
                }
                HStack {
                     Text("D'autre réalisation")
                         .font(.pageTitle)
                         .foregroundStyle(Color.richMahogany)
                    // Add carousel
                }
                
            }
            .padding()
            .background(Color.brightSnow)
        }
        
    }
    
}


#Preview {
    RecipeDetailView(recipe: Recipe.preview)
}

