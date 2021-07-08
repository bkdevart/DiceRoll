//
//  ContentView.swift
//  DiceRoll
//
//  Created by Brandon Knox on 7/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DiceView()
                .tabItem {
                    Image(systemName: "die.face.5")
                    Text("Roll")
                }

            Text("Results")
                .tabItem {
                    Image(systemName: "list.number")
                    Text("Results")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
