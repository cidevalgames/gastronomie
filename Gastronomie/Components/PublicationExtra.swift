//
//  PublicationExtra.swift
//  Gastronomie
//
//  Created by apprenant109 on 07/05/2026.
//

import SwiftUI

struct PublicationExtra: View {
    let text : String
    let image : String
    var body: some View {
        VStack {
            Image(systemName: "checkmark")
                .resizable()
                .scaledToFit()
                .frame(width: 93, height: 102)
                .foregroundStyle(Color.richMahogany)
            Text("\(text)")
                .font(.pageTitle)
                .foregroundStyle(Color.richMahogany)
                .cornerRadius(24)
                .frame(width: 404, height: 93)
        }
    }
}

#Preview {
    PublicationExtra(text:"Publié", image:"checkmark")
}
