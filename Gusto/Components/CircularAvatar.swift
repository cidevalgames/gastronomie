//
//  CircularAvatar.swift
//  Gastronomie
//
//  Created by apprenant76 on 27/04/2026.
//

import SwiftUI

struct CircularAvatar: View {
    let user: User
    
    var body: some View {
        Image(user.avatarImage)
            .resizable()
            .scaledToFit()
            .clipShape(.circle)
            .shadow(color: .black.opacity(0.25), radius: 8)
    }
}

#Preview {
    CircularAvatar(user: .preview)
}
