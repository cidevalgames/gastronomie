//
//  InfiniteCarousel.swift
//  Gastronomie
//
//  Created by apprenant109 on 30/04/2026.
//

import SwiftUI

struct InfiniteCarousel: View {
    let gifts: [Gift]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(gifts) { gift in
                    Image(gift.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 194)
                }
            }
        }
    }
}

#Preview {
    InfiniteCarousel(gifts: [Gift.preview, Gift.preview, Gift.preview])
}
