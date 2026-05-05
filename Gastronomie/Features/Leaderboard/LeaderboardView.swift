//
//  LeaderboardView.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import SwiftUI

struct LeaderboardView: View {
    let leaderboardUsers: [User] = [
        .preview,
        .preview,
        .preview
    ]
    
    let isCurrentUser = false
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Classement")
                .font(.pageTitle)
                .bold()
                .foregroundStyle(.richMahogany)
            
            PodiumView(user1: User.preview, user2: User.preview, user3: User.preview)
            
            VStack(spacing: 8) {
                ForEach(leaderboardUsers) { user in
                    LeaderboardCard(user: user, isCurrentUser: isCurrentUser)
                }
            }
            .frame(height: 324)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    LeaderboardView()
}
