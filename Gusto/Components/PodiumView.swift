//
//  PodiumView.swift
//  Gastronomie
//
//  Created by apprenant76 on 27/04/2026.
//

import SwiftUI

struct PodiumView: View {
    var user1: User
    var user2: User
    var user3: User
    
    var body: some View {
        HStack(alignment: .bottom) {
            PodiumPillar(user: user2, rank: 2, height: 87)
            PodiumPillar(user: user1, rank: 1, height: 125)
            PodiumPillar(user: user3, rank: 3, height: 56)
        }
    }
}

#Preview {
    PodiumView(user1: .preview, user2: .preview, user3: .preview)
}
