//
//  PublicationView.swift
//  Gastronomie
//
//  Created by apprenant99 on 30/04/2026.
//

import SwiftUI

struct PublicationView: View {
    @State var viewModel: PublicationViewModel = PublicationViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.brightSnow)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 24) {
                        //Titre page changer taille police
                        Text("Publier une recette")
                            .font(.pageTitle.bold())
                            .foregroundStyle(.richMahogany)
                        
                        VStack(alignment: .leading) {
                            Text("Titre")
                                .font(.pageTitle)
                                .foregroundStyle(.richMahogany)
                            
                            TextField("", text: $viewModel.title)
                                .frame(height: 24)
                                .padding(10)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(radius: 4)
                        }
                        
                        Divider()
                        
                        //Ajouter catégorie et niveau de difficulté ( étoiles)
                        VStack(alignment: .leading, spacing: 16) {
                            HStack(spacing: 16) {
                                Text("Catégorie :")
                                    .font(.publicationTitle2)
                                    .foregroundStyle(Color .richMahogany)
                                
                                Picker(selection: $viewModel.categories, label: Text("Catégories")) {
                                    ForEach(Category.allCases, id: \.self) { category in
                                        Text(category.rawValue)
                                            .font(.publicationTitle2)
                                    }
                                }
                                .tint(.darkWine)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .shadow(color: .black.opacity(0.25), radius: 4)
                            }
                            
                            HStack(spacing: 16) {
                                Text("Difficulté :")
                                    .font(.publicationTitle2)
                                    .foregroundStyle(Color .richMahogany)
                                
                                InteractableDifficultyIndicator(difficulty: $viewModel.difficulty)
                                    .frame(height: 24)
                                    .padding(4)
                                    .padding(.horizontal, 8)
                                    .background(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .shadow(color: .black.opacity(0.25), radius: 4)
                            }
                        }
                        
                        Divider()
                        
                        VStack(alignment: .leading) {
                            Text("Matériel")
                                .font(.pageTitle)
                                .foregroundStyle(.richMahogany)
                            
                            TextEditor(text: $viewModel.kitchenEquipments)
                                .frame(height: 240)
                                .padding(10)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(radius: 4)
                        }
                        
                        Divider()
                        
                        VStack(alignment: .leading) {
                            Text("Ingrédients")
                                .font(.pageTitle)
                                .foregroundStyle(.richMahogany)
                            
                            TextEditor(text: $viewModel.ingredients)
                                .frame(height: 240)
                                .padding(10)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(radius: 4)
                        }
                        
                        Divider()
                        
                        VStack(alignment: .leading) {
                            Text("Instructions")
                                .font(.pageTitle)
                                .foregroundStyle(.richMahogany)
                            
                            TextEditor(text: $viewModel.instructions)
                                .frame(height: 350)
                                .padding(10)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(radius: 4)
                        }
                        
                        Button {
                            viewModel.submit()
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
                        .sheet(isPresented: $viewModel.isShowingModal, content: {
                            SubmissionModal(text:"Recette publiée")
                                .presentationDetents([.height(250)])
                        })
                    }
                    .padding()
                }
            }
        }
    }
}


#Preview {
    PublicationView()
}
