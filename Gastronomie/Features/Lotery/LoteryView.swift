//
//  LoteryView.swift
//  Gastronomie
//
//  Created by apprenant109 on 30/04/2026.
//

import SwiftUI

struct LoteryView: View {
    @State var viewModel: LoteryViewModel = LoteryViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 32) {
                Text("Loterie")
                    .font(.pageTitle)
                    .bold()
                
                Text("Ce que les participants ont gagné...")
                    .font(.pageTitle)
                    .foregroundStyle(.richMahogany)
                    .multilineTextAlignment(.center)
                
                InfiniteCarousel(images: viewModel.giftsImages)
                    .frame(height: 300)
                    
                Text("Et bien d'autres...")
                    .font(.pageTitle)
                    .foregroundStyle(.richMahogany)
                
                HStack(spacing: 4) {
                    Text("Solde: 750")
                        .font(.loteryMoney)
                        .foregroundStyle(.darkWine)
                    Image(systemName: "bitcoinsign.circle")
                        .font(.loteryMoney)
                        .foregroundStyle(.darkWine)
                }
                
                Button {
                    print("do something")
                    
                    
                } label: {
                 
                    HStack {
                        Spacer()
                        Text("Participer pour 500")
                            .foregroundStyle(.white)
                            .font(.button)
                        Image(systemName: "bitcoinsign.circle")
                            .font(.loteryMoney)
                            .foregroundStyle(.white)
                           
                        Spacer()
                    }
                    .padding()
                    .background(.darkWine)
                    .cornerRadius(40)
                }
                
                Spacer()
                
            }
            .padding()
        }
    }
}
#Preview {
    LoteryView()
}
