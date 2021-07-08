//
//  DiceView.swift
//  DiceRoll
//
//  Created by Brandon Knox on 7/6/21.
//

import SwiftUI

struct DiceView: View {
    @State private var diceSelect = 1
    @State private var numberOfDice = 0
    @State private var diceRollValue = 4
//    @State private var diceRollValue = [4]
    // use coredata to hold results and pass between views
    
    var diceNumbers = [0: "1",
                       1: "2",
                       2: "3",
                       3: "4",
                       4: "5",
                       5: "6"]
    
    var diceSizes = [0: "4",
                     1: "6",
                     2: "8",
                     3: "10",
                     4: "12",
                     5: "20",
                     6: "100"]
    
    var body: some View {
        VStack {
//            List (diceRollValue) {
//                Text($0)
//            }
//            for face in diceRollValue {
//
//            }
            Text(String(diceRollValue))
                .font(.largeTitle)
                .frame(width: 300, height: 300, alignment: .center)
            Spacer()
            Text("Choose number of dice to roll:")
            Picker("Tip percentage", selection: $numberOfDice) {
                ForEach(0 ..< diceNumbers.count) {
                    Text(self.diceNumbers[$0]!)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            Text("Choose number of sides on dice:")
            Picker("Tip percentage", selection: $diceSelect) {
                ForEach(0 ..< diceSizes.count) {
                    Text(self.diceSizes[$0]!)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            Spacer()
            Button("Roll \(diceNumbers[numberOfDice]!) dice", action: diceRoll)
            Spacer()
        }
    }
    
    func diceRoll() {
        // pick random number between 1 and diceSizes[diceSelect]!
        let diceMax = Int(diceSizes[diceSelect]!)! + 1
        diceRollValue = Int.random(in: 1..<diceMax)
        // update diceRollValue state var and display
        print("Dice rolled!")
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView()
    }
}
