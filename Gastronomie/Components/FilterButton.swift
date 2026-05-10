//
//  FilterButton.swift
//  Gastronomie
//
//  Created by apprenant76 on 10/05/2026.
//

import SwiftUI

struct FilterButton: View {
    let text: String
    let selected: Bool
    
    var body: some View {
        Text(text)
            .font(.button3)
            .foregroundStyle(selected ? .brightSnow : .darkWine)
            .frame(width: 168, height: 40)
            .background(selected ? .darkWine : .brightSnow)
            .clipShape(RoundedRectangle(cornerRadius: 80))
            .overlay(
                RoundedRectangle(cornerRadius: 80)
                    .stroke(Color.darkWine, lineWidth: 2)
            )
            .shadow(color: .black.opacity(0.25), radius: 8)
    }
}

#Preview {
    FilterButton(text: "Catégorie", selected: true)
}
