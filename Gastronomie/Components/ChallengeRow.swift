//
//  ChallengeRow.swift
//  Gastronomie
//
//  Created by apprenant109 on 04/05/2026.
//

import SwiftUI

struct ChallengeRow: View {
        var score: Int
        var text: String
    
        var body: some View {
            ZStack {
                HStack {
                    Text("\(score)")
                        .font(.challengeMoney)
                        .foregroundStyle(Color.darkWine)
                        .padding()
                        .background(Color.brightSnow)
                        .cornerRadius(100)
                    
                    Spacer()
                    Text(text)
                        .font(.challengeTitle)
                        .foregroundStyle(.brightSnow)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }
            }
            .padding(2)
            .background(.darkWine)
            .cornerRadius(40)
            .padding(.horizontal)        }
    
    }


#Preview {
    ChallengeRow(score: 10, text: "Cuisiner une recette avec une difficulté de 3 étoiles")
    ChallengeRow(score: 20, text: "Mettre une recette en favoris")
    ChallengeRow(score: 50, text: "Participer à un tirage au sort" )
}

