//
//  ContentView.swift
//  guessTheFlag
//
//  Created by Shiwam verma on 10/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingAlert = false
    var body: some View {
        Button("Show alert") {
            isShowingAlert = true
            print("printing something")
        }
        .alert("Message", isPresented: $isShowingAlert) {
            Button("Close", role: .cancel) { }
        
//            Image(systemName: "pencil")
//            Text("button title")
//                .padding()
//                .foregroundColor(.white)
//                .background(.mint)
        } message: {
            Text("Please read this")
        }
//        VStack {
//            Button("Button 1") { }
//                .buttonStyle(.bordered)
//                .tint(.mint)
//            Button("Button 2", role: .destructive) { }
//                .buttonStyle(.bordered)
//            Button("Button 3") { }
//                .buttonStyle(.borderedProminent)
//            Button("Button 4", role: .destructive) { }
//                .buttonStyle(.borderedProminent)
//        }
//        Button("Delete selection", role: .destructive, action: executeDelete)
        
//        LinearGradient(colors: [.white,.blue], startPoint: .top, endPoint: .bottom)
//        LinearGradient(gradient: Gradient(colors: [.red,.green]), startPoint: .top, endPoint: .bottom)
//        LinearGradient(gradient: Gradient(stops: [
//            .init(color: .red, location: 0.45),
//            .init(color: .green, location: 0.55)
//        ]),startPoint: .top, endPoint: .bottom)
//        RadialGradient(gradient: Gradient(colors: [.blue,.pink]), center: .center, startRadius: 20, endRadius: 40)
//        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
//        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
//        ZStack {
//            VStack(spacing: 0) {
//                    Color.red
//                    Color.blue
//                }
//            Text("Hello World!")
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
////            Color.green
////            Text("hello")
////            Color.secondary
////                .frame(width: 200, height: 200)
////                .background(.green)
//        }
//        .ignoresSafeArea()
    }
//    func executeDelete() {
//        print("Something got deleted !")
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
