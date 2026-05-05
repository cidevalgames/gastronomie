//
//  LeaderboardCard.swift
//  Gastronomie
//
//  Created by apprenant76 on 27/04/2026.
//

import SwiftUI

struct LeaderboardCard: View {
    let user: User
    let isCurrentUser: Bool
    
    var body: some View {
        HStack {
            VStack {
                Image(user.avatarImage)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(color: .black.opacity(0.25), radius: 8)
                
                Text("\(user.xp) xp")
                    .font(.leaderboardCardXp)
            }
            
            Spacer()
            
            Text("\(user.firstName) \(user.lastName)")
                .font(.leaderboardCardTitle)
                .foregroundStyle(.richMahogany)
            
            Spacer()
            
            Text("\(user.rank)e")
                .font(.leaderboardCardPosition)
                .foregroundStyle(.richMahogany)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding([.vertical, .leading], 8)
        .padding(.trailing, 16)
        .background(.brightSnow)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: isCurrentUser ? .black.opacity(0.75) : .black.opacity(0.25), radius: isCurrentUser ? 12 : 8)
    }
}

#Preview {
    LeaderboardCard(user: .preview, isCurrentUser: true)
}
