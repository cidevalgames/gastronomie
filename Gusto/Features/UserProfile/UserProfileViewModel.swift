//
//  UserProfileViewModel.swift
//  Gastronomie
//
//  Created by apprenant76 on 04/05/2026.
//

import Foundation
import Observation

@Observable
class UserProfileViewModel {
    private let userService: UserProvider & SessionProvider
    
    private var currentUser: User {
        userService.currentUser
    }
    
    var registeredRecipes: [Recipe] {
        currentUser.registeredRecipes
    }
    
    var avatarImage: String {
        currentUser.avatarImage
    }
    
    var fullName: String {
        "\(currentUser.firstName) \(currentUser.lastName)"
    }
    
    var xpString: String {
        currentUser.xp.formatted()
    }
    
    var pointsString: String {
        currentUser.points.formatted()
    }
    
    var genreString: String {
        currentUser.genre.rawValue
    }
    
    init(userService: UserProvider & SessionProvider = UserService()) {
        self.userService = userService
    }
}
