//
//  DifficultyIndicator.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import SwiftUI

struct DifficultyIndicator: View {
    var difficulty: Int
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(0 ..< difficulty) { index in
                Image(systemName:"bolt.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity)
            }
            
            ForEach(0 ..< 5 - difficulty) { index in
                Image(systemName:"bolt")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity)
            }
        }
        .foregroundStyle(Color.yellow)
    }
}

#Preview {
    DifficultyIndicator(difficulty: 5)
}
