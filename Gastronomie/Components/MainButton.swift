//
// MainButton
// Gastronomie

// Created by apprenant99 on 30/04/2026
//
    import SwiftUI

    struct MainButton: View {
        
        @State var isParticipating: Bool = false
        
        let text: String
        
        var body: some View {
            
            Button {
                isParticipating = true
            } label: {
                HStack {
                    Spacer()
                    
                    Text(text)
                        .font(.button2)
                        .foregroundStyle(.brightSnow)
                    
                    Spacer()
                }
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
