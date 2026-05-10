//
// MainButton
// Gastronomie

// Created by apprenant99 on 30/04/2026
//
    import SwiftUI

    struct MainButton: View {
        let text: String
        
        var body: some View {
            
            HStack {
                Spacer()
                
                Text(text)
                    .font(.button)
                    .foregroundStyle(.brightSnow)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(Color.darkWine)
            .cornerRadius(24)
            .shadow(color: .black.opacity(0.25), radius: 8)
        }
    }

    #Preview {
        MainButton(text: "Participer")
    }
