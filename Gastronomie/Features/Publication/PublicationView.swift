//
//  PublicationView.swift
//  Gastronomie
//
//  Created by apprenant99 on 30/04/2026.
//

import SwiftUI

struct PublicationView: View {
    @State private var title = ""
    @State private var description: String = ""
    @State private var selectedCategories: String = ""
    @State private var IsExpanded = false
    @State private var categories: Category = .starter
    @State private var dificulty = Int (0)
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    //Titre page changer taille police
                    Text("Publier une recette")
                        .font(.pageTitle.bold())
                    
                    Text("Titre")
                        .font(.pageTitle)
                        .foregroundStyle(Color.richMahogany)
                    
                    //Ajouter catégorie et niveau de difficulté ( étoiles)
                    HStack(alignment: .center, spacing: 16) {
                        HStack {
                            Text("Catégories")
                                .font(.recipeDetailBody)
                                .foregroundStyle(Color .darkWine)
                            Picker(selection: $categories, label: Text("Catégories")) {
                                ForEach(Category.allCases, id: \.self) { category in
                                    Text(category.rawValue)
                                        .font(.recipeDetailBody)
                                }
                            }
                            .tint(Color.darkWine)
                        }
                        HStack{
                            ForEach(1...5, id:\.self) { number in
                                Button {
                                    dificulty = number
                                } label: {
                                    Text(dificulty >= number ? "★" : "☆")
                                }
                            }
                            
                        }
                        .tint(Color.yellow)
                    }
                    

                    TextField("", text: $title)
                        .frame(height: 24)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 4)
                    
                    Text("Recette")
                        .font(.pageTitle)
                        .foregroundStyle(Color .richMahogany)
                    TextField("", text: $description)
                        .frame(height: 350)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 4)
                    
                    
                    MainButton(text: "Publier")
                }
                .padding(.horizontal)
            }.background(Color.brightSnow)
            //.navigationTitle("Publier une recette")
            
        }
    }
}



#Preview {
    PublicationView()
}
