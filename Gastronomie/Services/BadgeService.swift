//
//  BadgeService.swift
//  Gastronomie
//
//  Created by apprenant76 on 04/05/2026.
//

import Foundation

protocol BadgeProvider {
    func fetchAll() -> [Badge]
}

struct BadgeService: BadgeProvider {
    private let allBadges: [Badge] = [
        Badge(image: "badge"),
        Badge(image: "badge"),
        Badge(image: "badge"),
        Badge(image: "badge"),
        Badge(image: "badge"),
        Badge(image: "badge")
    ]
    
    func fetchAll() -> [Badge] {
        return allBadges
    }
}
