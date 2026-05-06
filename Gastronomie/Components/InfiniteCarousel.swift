//
//  InfiniteCarousel.swift
//  Gastronomie
//
//  Created by apprenant109 on 30/04/2026.
//

import SwiftUI

struct InfiniteCarousel: View {
    let images: [String]
    
    var body: some View {
        TabView {
            ForEach(0 ..< 1000, id: \.self) { index in
                VStack {
                    Image(images[index % images.count])
                        .resizable()
                        .scaledToFill()
                        .containerRelativeFrame(.vertical)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
            }
        }
        .tabViewStyle(.page)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    InfiniteCarousel(images: [Gift.preview.image, Gift.preview.image, Gift.preview.image])
}
