//
//  PodiumPillar.swift
//  Gastronomie
//
//  Created by apprenant76 on 27/04/2026.
//

import SwiftUI

struct PodiumPillar: View {
    let user: User
    let rank: Int
    let height: Int
    
    var body: some View {
        ZStack {
            VStack {
                CircularAvatar(user: user)
                    .frame(width: 64)
                
                ZStack {
                    Rectangle()
                        .fill(.darkWine)
                    
                    Text(String(rank))
                        .foregroundStyle(.brightSnow)
                        .font(.podiumNumber)
                }
                .frame(height: CGFloat(height))
                .clipShape(UnevenRoundedRectangle(topLeadingRadius: 12, topTrailingRadius: 12))
                .shadow(color: .black.opacity(0.25), radius: 8)
                
                Text("\(user.xp.formatted()) xp")
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    PodiumPillar(user: .preview, rank: 1, height: 125)
}
