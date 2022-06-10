//
//  ContentView.swift
//  dynamicMultiplicationTable
//
//  Created by Shiwam verma on 06/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var tableOf: Int = 2
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Stepper("Multiple: \(tableOf)", onIncrement: {tableOf+=1}, onDecrement: {tableOf-=1})
                }
                Section {
                    Text("1 x \(tableOf) = \(tableOf * 1)")
                    Text("2 x \(tableOf) = \(tableOf * 2)")
                    Text("3 x \(tableOf) = \(tableOf * 3)")
                    Text("4 x \(tableOf) = \(tableOf * 4)")
                    Text("5 x \(tableOf) = \(tableOf * 5)")
                    Text("6 x \(tableOf) = \(tableOf * 6)")
                    Text("7 x \(tableOf) = \(tableOf * 7)")
                    Text("8 x \(tableOf) = \(tableOf * 8)")
                    Text("9 x \(tableOf) = \(tableOf * 9)")
                    Text("10 x \(tableOf) = \(tableOf * 10)")
                }
            }.navigationTitle("Multiplication Table")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
