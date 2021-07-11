//
//  DiceRolls.swift
//  DiceRoll
//
//  Created by Brandon Knox on 7/8/21.
//

import SwiftUI

class DiceRoll: Identifiable, Codable {
    let id = UUID()
    var rollValue = 1
}

class DiceRolls: ObservableObject {
    @Published var diceRolls: [DiceRoll]

    init() {
        self.diceRolls = []
    }
}
