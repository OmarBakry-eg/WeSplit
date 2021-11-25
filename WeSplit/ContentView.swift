//
//  ContentView.swift
//  WeSplit
//
//  Created by Omar Bakry on 25/11/2021.

// Form is scrollable
// navigation view left a space at above
//naviagtion view title could be inline like app bar in flutter or automatic like Hacker news app
// when you trying to add a title to navigation view just make sure you add it the brackets before its bracket


import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationView  {
            Form {
         Group  {
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
         }
            
        Group{
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            
         }
            
        }.padding(.horizontal) // bracket before its brackets (form bracket)
            
            .navigationTitle("Swift UI")
            .navigationBarTitleDisplayMode(.inline)
        
        } // navigation view 
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
