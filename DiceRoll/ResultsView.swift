//
//  ResultsView.swift
//  DiceRoll
//
//  Created by Brandon Knox on 7/8/21.
//

import SwiftUI

struct ResultsView: View {
    @EnvironmentObject var allDiceRolled: DiceRolls
    
    var diceValues: [DiceRoll] {
        return allDiceRolled.diceRolls
//        switch filter {
//        case .none:
//            return prospects.people
//        case .contacted:
//            return prospects.people.filter { $0.isContacted }
//        case .uncontacted:
//            return prospects.people.filter { !$0.isContacted }
//        }
    }
    
    var body: some View {
        VStack {
            Text("Results")
            List {
                ForEach(diceValues) { roll in
                    Text(String(roll.rollValue))
                }
            }
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
