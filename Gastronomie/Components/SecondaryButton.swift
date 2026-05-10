//
//  SecondaryButton.swift
//  Gastronomie
//
//  Created by apprenant76 on 10/05/2026.
//

import SwiftUI

struct SecondaryButton: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.button)
            .foregroundStyle(.richMahogany)
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(
                LinearGradient(colors: [.darkWine.opacity(0.2), .darkWine.opacity(0.18), .darkWine.opacity(0.14)], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(24)
            .shadow(color: .black.opacity(0.25), radius: 8)
    }
}

#Preview {
    SecondaryButton(text: "Voir le classement")
}
