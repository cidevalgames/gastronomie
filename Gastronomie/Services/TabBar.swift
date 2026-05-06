//
//  TabBar.swift
//  Gastronomie
//
//  Created by apprenant109 on 05/05/2026.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        Spacer()
        ZStack {
            HStack {
                HStack {
                    Button {
                        print("do something")
                    } label: {
                        VStack {
                            Image(systemName: "text.book.closed")
                            Text("Recettes")
                        }
                    }
                    Button {
                        print("do something")
                    } label: {
                        VStack {
                            Image(systemName: "trophy")
                            Text("Loterie")
                        }
                    }
                    Button {
                        print("do something")
                    } label: {
                        VStack {
                            Image(systemName: "plus")
                            Text("Publier")
                        }
                    }
                    Button {
                        print("do something")
                    } label: {
                        VStack {
                            Image(systemName: "person")
                            Text("Profil")
                        }
                    }
                }
                .frame(width: 273, height: 54)
                .font(.challengeMoney)
                .foregroundStyle(Color.richMahogany)
                .padding()
                .background(Color.brightSnow)
                .cornerRadius(80)
                Button {
                    print("do something")
                } label: {
                    Image(systemName: "magnifyingglass")
                        .frame(width: 54, height: 54)
                        .font(.challengeMoney)
                        .foregroundStyle(Color.richMahogany)
                        .padding()
                        .background(Color.brightSnow)
                        .cornerRadius(80)
                }
            }
        }
    }
}
#Preview {
    TabBar()
}
