//
//  ProfileDetail.swift
//  Gastronomie
//
//  Created by apprenant76 on 04/05/2026.
//

import SwiftUI

struct ProfileDetail: View {
    let icon: String
    let text: String
    
    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: icon)
                .font(.system(size: 16))
            Text(text)
                .font(.profileDetail)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundStyle(.darkWine)
    }
}

#Preview {
    ProfileDetail(icon: "figure.stand", text: "Homme")
}
