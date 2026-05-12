//
//  SearchRecipeRow.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import SwiftUI

struct SearchRecipeRow: View {
    var image: String
    var title: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
            
            Text(title)
                .lineLimit(1)
                .foregroundStyle(.richMahogany)
        }
    }
}

#Preview {
    SearchRecipeRow(image: Recipe.preview.image, title: Recipe.preview.title)
}
