//
//  ContentView.swift
//  Roll the Dice
//
//  Created by Quinn Kozak on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    var body: some View {
        VStack {
            
            Text("Roll Dice").font(.title)
            Image("pips \(randomValue)")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
                }
        }
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
