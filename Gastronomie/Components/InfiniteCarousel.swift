//
//  InfiniteCarousel.swift
//  Gastronomie
//
//  Created by apprenant109 on 30/04/2026.
//

import SwiftUI

struct InfiniteCarousel: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Image("gift0")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 194)
                Image("gift1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 194)
                Image("gift2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 194)
                    
            }
        }
    }
}

#Preview {
    InfiniteCarousel()
}
