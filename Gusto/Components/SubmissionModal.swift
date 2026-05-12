//
//  SubmissionModal.swift
//  Gastronomie
//
//  Created by apprenant109 on 07/05/2026.
//

import SwiftUI

struct SubmissionModal: View {
    let text : String
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "checkmark")
                .resizable()
                .scaledToFit()
                .frame(width: 93, height: 102)
            
            Text("\(text)")
                .font(.pageTitle)
                .bold()
                .cornerRadius(24)
                .frame(width: 404, height: 93)
            
            Spacer()
        }
        .foregroundStyle(.darkWine)
    }
}

#Preview {
    SubmissionModal(text:"Publié")
}
