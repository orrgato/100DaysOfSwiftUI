//
//  ContentView.swift
//  WeSplitRevision
//
//  Created by Shiwam verma on 08/05/22.
//
import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 0
    @State private var tipPercentage = 0
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter total check Amount",value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "INR"))
                        .keyboardType(.decimalPad)
                    Picker("number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
