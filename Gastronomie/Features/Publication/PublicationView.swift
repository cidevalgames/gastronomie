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
    @State var publicationModal: Bool = false
    @State var isParticipating: Bool = false
    
    @State var viewModel: PublicationViewModel = PublicationViewModel()
    
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
                        
                        InteractableDifficultyIndicator(difficulty: $viewModel.difficulty)
                            .frame(height: 24)
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
                    
                    
                    Button {
                        isParticipating = true
                    } label: {
                        HStack {
                            Spacer()
                            
                            Text("Publier")
                                .font(.button)
                                .foregroundStyle(.brightSnow)
                            
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color.darkWine)
                    .cornerRadius(24)
                    .shadow(color: .black.opacity(0.25), radius: 8)
                    .sheet(isPresented: $isParticipating, content: {
                        PublicationExtra(text:"Publié", image:"checkmark")
                            .ignoresSafeArea()
                    })
                    
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
