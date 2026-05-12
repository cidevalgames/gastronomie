//
//  ChallengeViewModel.swift
//  Gastronomie
//
//  Created by apprenant76 on 04/05/2026.
//

import Foundation
import Observation

@Observable
class ChallengeViewModel {
    private let challengeService: ShuffledChallengesProvider
    private let userService: SessionProvider
    private let shuffledChallenges: [Challenge]
    
    init(challengeService: ShuffledChallengesProvider = ChallengeService(),
         userService: SessionProvider = UserService()) {
        self.challengeService = challengeService
        self.userService = userService
        self.shuffledChallenges = challengeService.fetchShuffledChallenges()
    }
    
    var threeChallengesList: [Challenge] {
        Array(shuffledChallenges.prefix(3))
    }
    
    var userBadgesImages: [Badge] {
        userService.currentUser.badges
    }
}
