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
            VStack(alignment: .center, spacing: 20) {
                Text("Loterie")
                    .font(.pageTitle)
                    .bold()
                
                Text("Ce que les participants ont gagné...")
                    .font(.pageTitle)
                    .foregroundStyle(.richMahogany)
                    .padding()
                    .multilineTextAlignment(.center)
                
                InfiniteCarousel(gifts: viewModel.gifts)
                    
                Text("Et bien d'autres...")
                    .font(.pageTitle)
                    .padding()
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
                    .padding()
                }
                
                Spacer()
                
            }
        }
    }
}
#Preview {
    LoteryView()
}
