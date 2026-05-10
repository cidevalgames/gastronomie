//
//  InteractableDifficultyIndicator.swift
//  Gastronomie
//
//  Created by apprenant76 on 10/05/2026.
//

import SwiftUI

struct InteractableDifficultyIndicator: View {
    @Binding var difficulty: Int
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(1...5, id:\.self) { number in
                Button {
                    difficulty = number
                } label: {
                    
                    
                    Image(systemName: difficulty >= number ? "bolt.fill" : "bolt")
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: .infinity)
                }
            }
        }
        .foregroundStyle(Color.yellow)
    }
}

#Preview {
    InteractableDifficultyIndicator(difficulty: .constant(3))
}
