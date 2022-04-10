//
//  ContentView.swift
//  converto
//
//  Created by Shiwam verma on 07/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputTime = 0.0
    @State private var inputUnit = "seconds"
    @State private var outputUnit = "seconds"
    @FocusState private var inputIsFocused: Bool
    
    var outputTime: Double {
//        return inputTime * 5
        var timeInSeconds: Double = inputTime
        if inputUnit == "minutes" {
            timeInSeconds = inputTime * 60
        } else if inputUnit == "hours" {
            timeInSeconds = inputTime * 3600
        } else if inputUnit == "days" {
            timeInSeconds = inputTime * 86400
        }
        
        switch outputUnit {
        case "minutes":
            return timeInSeconds / 60
        case "days":
            return timeInSeconds / 86400
        case "hours":
            return timeInSeconds / 3600
        default:
            return timeInSeconds
        }
        
    }
    let timeUnits = ["seconds", "minutes", "hours", "days"]
//    enum timeUnits {
//        case seconds,minutes,hours,days
//    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter Time", value: $inputTime, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
//                    Text("Input textField for input")
                Picker("Time unit selection",selection: $inputUnit) {
                        ForEach(timeUnits, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
//                    Group {
//                            Text("Segmented control for input unit")
//                             Text("seconds, minutes, hours, or days")
//                    }
                } header:{
                    Text("Input")
                }
                
                Section {
                    Text(outputTime.formatted())
                    Picker("Output Time unit selection",selection: $outputUnit) {
                        ForEach(timeUnits, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                } header: {
                    Text("Output")
                }
                
            }
            .navigationTitle("ClockWork")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        inputIsFocused = false
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
