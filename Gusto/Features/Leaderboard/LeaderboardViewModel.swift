//
//  LeaderboardViewModel.swift
//  Gastronomie
//
//  Created by apprenant76 on 05/05/2026.
//

import Foundation
import Observation

@Observable
class LeaderboardViewModel {
    private let userService: SortedUsersProvider & SessionProvider
    private let currentUser: User
    private var sortedUsers: [User] {
        userService.fetchAllSortedUsers()
    }
    
    init(userService: SortedUsersProvider & SessionProvider = UserService()) {
        self.userService = userService
        self.currentUser = userService.currentUser
    }
    
    var usersAroundCurrentUser: [User?] {
        var previousUser: User? = nil
        var nextUser: User? = nil
        
        if let currentIndex = sortedUsers.firstIndex(where: { $0.id == currentUser.id }) {
            
            if currentIndex > 0 && currentIndex < sortedUsers.count {
                previousUser = sortedUsers[currentIndex - 1]
                nextUser = sortedUsers[currentIndex + 1]
            }
        }
        
        return [previousUser, currentUser, nextUser]
    }
    
    var threeFirstUsers: [User] {
        Array(sortedUsers.prefix(3))
    }
    
    func isCurrentUser(user: User) -> Bool {
        return user.id == userService.currentUser.id
    }
}
