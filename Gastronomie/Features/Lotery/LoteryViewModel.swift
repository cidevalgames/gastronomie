//
//  LoteryViewModel.swift
//  Gastronomie
//
//  Created by apprenant76 on 04/05/2026.
//

import Foundation
import Observation

@Observable
class LoteryViewModel {
    private let giftService: GiftProvider
    private let gifts: [Gift]
    
    init(giftService: GiftProvider = GiftService()) {
        self.giftService = giftService
        self.gifts = giftService.fetchAll()
    }
    
    var giftsImages: [String] {
        Array(gifts.map{ $0.image })
    }
}
