//
//  ChallengeView.swift
//  Gastronomie
//
//  Created by apprenant109 on 30/04/2026.
//

import SwiftUI

struct ChallengeView: View {
    @State var viewModel: ChallengeViewModel = ChallengeViewModel()
    
    let columns = [GridItem(),GridItem()]
    
    var body: some View {
        ZStack {
            Color(.brightSnow)
                .ignoresSafeArea()
            
            VStack {
                ScrollView(.vertical) {
                    Text("Défis actuels")
                        .font(.pageTitle)
                        .foregroundStyle(.richMahogany)
                        .padding()
                    
                    VStack {
                        ForEach(viewModel.threeChallengesList) { challenge in
                            ChallengeRow(points: challenge.points, title: challenge.title)
                        }
                    }
                    
                    Text("Challenges réalisés")
                        .font(.pageTitle)
                        .foregroundStyle(.richMahogany)
                        .padding()
                    
                    LazyVGrid(columns: columns) {
                        ForEach(viewModel.userBadgesImages) { badge in
                            BadgeCard(badge: badge)
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    ChallengeView()
}
