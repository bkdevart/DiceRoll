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
                    Image(systemName: "star")
                    Text("One")
                }

            Text("Results")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Two")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
