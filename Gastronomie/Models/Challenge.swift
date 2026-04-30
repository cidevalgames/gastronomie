//
//  Challenge.swift
//  Gastronomie
//
//  Created by apprenant109 on 29/04/2026.
//

import Foundation

struct Challenge : Identifiable {
    let id: UUID = UUID()
    let title : String
    let points : Int
}
