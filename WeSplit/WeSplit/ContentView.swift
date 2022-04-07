//
//  ContentView.swift
//  WeSplit
//
//  Created by Shiwam verma on 25/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    @FocusState private var amountIsFocused: Bool

    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalAmountWithTip: Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let totalAmount = checkAmount + tipValue

        return totalAmount
    }
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let totalAmount = checkAmount + tipValue
        let amountPerPerson = totalAmount/peopleCount
        
        return amountPerPerson
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number Of People", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) People")
                        }
                    }
                } header: {
                    Text("CheckAmount and total number of people")
                }
                
                Section {
//                    Text("Select tip percent")
                    
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                    }
//                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave.?")
                }
                
                Section {
                    Group {
                        Text(totalAmountWithTip,format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    }
                } header: {
                    Text("Amount with tip")
                }
                
                Section {
                    Group {
//                        Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
//                        Text("\(totalPerPerson)")
                    }
                } header: {
                    Text("Amount per person")
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
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


//struct ContentView:View {
//    let students = ["Student 1", "Student 2","Student 3", "Student 4"]
//    @State private var selectedStudent = "Student 1"
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Picker("Select your student", selection: $selectedStudent) {
//                    ForEach(students, id: \.self) {
//                        Text($0)
//                    }
//                }
//            }
//        }
//    }
//}

//struct ContentView: View {
//    let students = ["Harry", "Hermione", "Ron"]
//    @State private var selectedStudent = "Harry"
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Picker("Select your student", selection: $selectedStudent) {
//                    ForEach(students, id: \.self) {
//                        Text($0)
//                    }
//                }
//            }
//        }
//    }
//}

//struct ContentView: View {
//    @State private var name = ""
////    @State private var taps = 0
//    var body: some View {
//        Form {
//            ForEach(1..<100) {
//                Text("Row \($0)")
//            }
//        }
        
//        Form {
//            TextField("Enter your name", text: $name)
//            Text("Hellllo")
//            Text("Your name is \(name)")
////            Text("Helo")
//        }
        
//        Button("Tap Count: \(taps)") { taps += 1 }
        
//        NavigationView {
//            Form {
//                Section {
//                    Text("A Section inside Form")
//                }
//            }
//            .navigationTitle("Navigator")
//            .navigationBarTitleDisplayMode(.inline)
//        }
//        Form {
//            Text("Hello, world!")
////                .padding()
//            Text("Hello, world!")
//            Text("Hello, world!")
//            Section {
//                Text("A Section")
//                Text("A Section")
//            }
//            Group {
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                    Text("Hello, world!")
//                }
//        }
//    }
// }

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
