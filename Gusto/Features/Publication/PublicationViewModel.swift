//
//  PublicationViewModel.swift
//  Gastronomie
//
//  Created by apprenant76 on 10/05/2026.
//

import Foundation
import Observation

@Observable
class PublicationViewModel {
    var title: String = ""
    var categories: Category = .starter
    var difficulty: Int = 0
    var kitchenEquipments: String = ""
    var ingredients: String = ""
    var instructions: String = ""
    var isShowingModal: Bool = false
    
    func submit() {
        reset()
        
        isShowingModal = true
    }
    
    private func reset() {
        title = ""
        categories = .starter
        difficulty = 0
        kitchenEquipments = ""
        instructions = ""
    }
}
