//
//  DiceView.swift
//  DiceRoll
//
//  Created by Brandon Knox on 7/6/21.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfSides = 6
    
    var body: some View {
        Text(String(numberOfSides))
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView()
    }
}
