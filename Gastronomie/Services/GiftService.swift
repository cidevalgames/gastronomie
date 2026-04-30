//
//  GiftService.swift
//  Gastronomie
//
//  Created by apprenant76 on 30/04/2026.
//

import Foundation

protocol GiftProvider {
    func fetchAll() -> [Gift]
}

struct GiftService: GiftProvider {
    private let allGifts: [Gift] = [
        Gift(image: "gift0"),
        Gift(image: "gift1"),
        Gift(image: "gift2")
    ]
    
    func fetchAll() -> [Gift] {
        return allGifts
    }
}
