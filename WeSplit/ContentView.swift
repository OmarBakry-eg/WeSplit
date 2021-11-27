//
//  ContentView.swift
//  WeSplit
//
//  Created by Omar Bakry on 25/11/2021.

// picker for picking multi choeses
// \.self that mean look up in the arry it self because the id is strings it self
// we use set because the id its string it self so it will protect us from duplicate
// when you use set/dict in foreach you must sorted it using .sorted()
//@FoucsState like @state but is only invinted for input ui text

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var keyboardIsFoucsed : Bool // for hiding keyboard
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2) //converting it to double
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD") ).keyboardType(.decimalPad).focused($keyboardIsFoucsed) // $ binding , read and write if true is foucsed else not
                    Picker("Num of people", selection: $numberOfPeople) {
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                    
                }
                
                Section{
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages , id : \.self){
                            Text("\($0) %")
                        }
                    }
                    .pickerStyle(.segmented)
                    
                } header: {
                    Text("How much tip do you want to leave ?").foregroundColor(.black)
                }.onChange(of: tipPercentage) { newValue in
                    print(newValue)
                }
                Section{
                    Text(totalPerPerson,format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
            }.navigationTitle("WeSplit")
                .toolbar(content: {
                    ToolbarItemGroup(placement: .keyboard, content: {
                        Spacer()
                        Button("Done"){
                            keyboardIsFoucsed = false
                        }
                    })
                })
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
