//
//  ContentView.swift
//  WeSplit
//
//  Created by Omar Bakry on 25/11/2021.

// picker for picking multi choeses
// \.self that mean look up in the arry it self because the id is strings it self
// we use set because the id its string it self so it will protect us from duplicate
// when you use set/dict in foreach you must sorted it using .sorted()

import SwiftUI

struct ContentView: View {
    let stringArr : Set<String> = ["Omar","Salem","Bakry"]
    @State private var selectedStud = "Omar"
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStud, content: {
                    ForEach(stringArr.sorted(), id : \.self, content: {
                        Text($0)
                    })
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
