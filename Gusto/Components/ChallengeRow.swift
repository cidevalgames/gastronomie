//
//  ChallengeRow.swift
//  Gastronomie
//
//  Created by apprenant109 on 04/05/2026.
//

import SwiftUI

struct ChallengeRow: View {
        var points: Int
        var title: String
    
        var body: some View {
            ZStack {
                HStack {
                    Text("\(points)")
                        .font(.challengeMoney)
                        .foregroundStyle(Color.darkWine)
                        .padding()
                        .background(Color.brightSnow)
                        .cornerRadius(100)
                    
                    Spacer()
                    Text(title)
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
    ChallengeRow(points: Challenge.preview.points, title: Challenge.preview.title)
}

