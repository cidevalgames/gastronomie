//
//  DifficultyStars.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import SwiftUI

struct DifficultyStars: View {
    var stars: Int
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(0 ..< stars) { index in
                Image(systemName:"star.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity)
            }
            
            ForEach(0 ..< 5 - stars) { index in
                Image(systemName:"star")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity)
            }
        }
        .foregroundStyle(Color.yellow)
    }
}

#Preview {
    DifficultyStars(stars: 5)
}
