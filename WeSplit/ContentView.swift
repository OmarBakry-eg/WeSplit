//
//  ContentView.swift
//  WeSplit
//
//  Created by Omar Bakry on 25/11/2021.

//When trying to add an eleven static content in your list, stack, form you'll get an exeception
// so in your form you could add group or section to fit this err

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Form {
         Group  {
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
         }
            
         Section{
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            
         }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
