//
//  ContentView.swift
//  WeSplit
//
//  Created by Shiwam verma on 25/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
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
