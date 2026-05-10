//
//  UserProfileView.swift
//  Gastronomie
//
//  Created by apprenant76 on 04/05/2026.
//

import SwiftUI

struct UserProfileView: View {
    @State var viewModel: UserProfileViewModel = UserProfileViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24) {
                    // Profile
                    HStack(alignment: .top, spacing: 16) {
                        Image(viewModel.avatarImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 128, height: 128)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .shadow(color: .black.opacity(0.25), radius: 8, x: 0, y: 0)
                        
                        // Profile details
                        VStack {
                            Text(viewModel.fullName)
                                .font(.profileName)
                                .foregroundStyle(.richMahogany)
                                .lineLimit(1)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            ProfileDetail(icon: "figure.stand", text: viewModel.genreString)
                            
                            Spacer()
                            
                            ProfileDetail(icon: "arrow.up.circle", text: viewModel.xpString)
                            
                            Spacer()
                            
                            ProfileDetail(icon: "bitcoinsign.circle", text: viewModel.pointsString)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 128)
                    }
                    .frame(maxWidth: .infinity, alignment: .top)
                    
                    // Buttons
                    VStack(spacing: 8) {
                        NavigationLink {
                            ChallengeView()
                        } label: {
                            MainButton(text: "Mes challenges")
                        }
                        
                        NavigationLink {
                            LeaderboardView()
                        } label: {
                            SecondaryButton(text: "Voir le classement")
                        }
                    }
                    
                    // My recipes
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Mes recettes")
                            .font(.pageTitle)
                            .foregroundStyle(.richMahogany)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        LazyVGrid(
                            columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ]
                        ) {
                            ForEach(viewModel.registeredRecipes) { recipe in
                                NavigationLink {
                                    RecipeDetailView(recipe: recipe)
                                } label: {
                                    RecipeProfileCard(recipe: recipe)
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    UserProfileView()
}
