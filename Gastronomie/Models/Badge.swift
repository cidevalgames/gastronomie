//
//  Badge.swift
//  Gastronomie
//
//  Created by apprenant96 on 30/04/2026.
//

import Foundation

struct Badge: Identifiable {
    let id: UUID = UUID()
    let image : String
}

extension Badge {
    static let preview: Badge = Badge(image: "badge")
}
