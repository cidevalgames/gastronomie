//
//  TabBarView.swift
//  Gastronomie
//
//  Created by apprenant109 on 05/05/2026.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab("Recettes", systemImage: "text.book.closed") {
                RecipeListView()
            }
            Tab("Loterie", systemImage: "trophy") {
                LoteryView()
            }
            Tab("Publier", systemImage: "plus") {
                PublicationView()
            }
            
            Tab("Profil", systemImage: "person") {
                UserProfileView()
            }
            
            Tab(role: .search) {
                SearchBarView()
            }
        }
        
        
    }
}
#Preview {
    TabBarView()
}
