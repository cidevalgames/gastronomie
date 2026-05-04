//
//  BadgeCard.swift
//  Gastronomie
//
//  Created by apprenant109 on 04/05/2026.
//

import SwiftUI

struct BadgeCard: View {
    let badge: Badge
    
    var body: some View {
        Image(badge.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    BadgeCard(badge: Badge.preview)
}
