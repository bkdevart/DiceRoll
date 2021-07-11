//
//  ResultsView.swift
//  DiceRoll
//
//  Created by Brandon Knox on 7/8/21.
//

import SwiftUI

struct ResultsView: View {
    @EnvironmentObject var allDiceRolled: [DiceRoll]
    
    var body: some View {
        VStack {
            Text("Results")
//            List {
//                ForEach(allDiceRolled, id: \.self) { roll in
//
//                }
//            }
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
