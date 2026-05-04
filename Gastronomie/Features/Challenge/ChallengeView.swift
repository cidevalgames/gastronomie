//
//  ChallengeView.swift
//  Gastronomie
//
//  Created by apprenant109 on 30/04/2026.
//

import SwiftUI

struct ChallengeView: View {
    let columns = [GridItem(),GridItem()]
    
    var body: some View {
            VStack {
                ScrollView(.vertical) {
                Text("Défis actuels")
                    .font(.pageTitle)
                    .foregroundStyle(.richMahogany)
                    .padding()
                ChallengeRow(score: 10, text: "Cuisiner une recette avec une difficulté de 3 étoiles")
                ChallengeRow(score: 20, text: "Mettre une recette en favoris")
                ChallengeRow(score: 50, text: "Participer à un tirage au sort" )

                Text("Challenges réalisés")
                    .font(.pageTitle)
                    .foregroundStyle(.richMahogany)
                    .padding()
                
                    LazyVGrid(columns: columns) {
                        ForEach(BadgeService().fetchAll()) { badge in
                            BadgeCard(badge: badge)
                        
                    }
                }
            }
        }
    }
}
#Preview {
    ChallengeView()
}
