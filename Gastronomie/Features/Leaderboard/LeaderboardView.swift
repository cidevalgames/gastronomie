//
//  LeaderboardView.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import SwiftUI

struct LeaderboardView: View {
    @State var viewModel: LeaderboardViewModel = LeaderboardViewModel()
    
    let isCurrentUser = false
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Classement")
                .font(.pageTitle)
                .bold()
                .foregroundStyle(.richMahogany)
            
            PodiumView(user1: viewModel.threeFirstUsers[0], user2: viewModel.threeFirstUsers[1], user3: viewModel.threeFirstUsers[2])
            
            VStack(spacing: 8) {
                ForEach(viewModel.usersAroundCurrentUser as! [User]) { user in
                    LeaderboardCard(user: user, isCurrentUser: viewModel.isCurrentUser(user: user))
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
