//
//  ContentView.swift
//  WeSplit
//
//  Created by Omar Bakry on 25/11/2021.

// @State tag for rebuild ui and change the value of its var
// Button takes a title and a closure for actions.
// Vstack like column in flutter , HStack like row and zStack like stack in flutter
// $ => in swift ui use a dollar sign to binding the var that make it writing it and store it this is binding

import SwiftUI

struct ContentView: View {
    @State private var tapCount : Int = 0
    @State private var name : String = ""
    var body: some View {
        VStack {
            Form {
                TextField("Type your name", text: $name)
                Text("Your name is \(name)")
            }
            Button("Tap Count \(tapCount)", action: {
                tapCount += 1
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
