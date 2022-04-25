//
//  ContentView.swift
//  learnSwiftUI
//
//  Created by Shiwam verma on 12/04/22.
//

import SwiftUI



struct ContentView: View {
    
    @ViewBuilder var spells: some View {
        Group {
            Text("asdfgh")
        }
    }
    
    @State private var useRedText = false
    
    
    var body: some View {
        
        
        VStack {
            spells
            CapsuleText(text: "Send Nodes")
            CapsuleText(text: "Show Terminals")
        }

        
//        Button("Hello World") {
//            useRedText.toggle()
//        }
//        .foregroundColor(useRedText ? .red : .blue)
//        Button("Hello Workd") {
//            print(type(of: self.body))
//        }
//        .frame(width: 200, height: 200)
//        .background(.cyan)
//        .padding()
//        .background(.red)
//        .padding()
//        .background(.blue)
//        .padding()
//        .background(.green)
//        .padding()
//        .background(.yellow)
//        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.blue,.black]), startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
//            VStack {
//                VStack {
//                        Text("❤️")
//                            .font(.largeTitle)
//
//                        Text("You have been active for: ")
//                            .font(.title.bold())
//                            .foregroundColor(.white)
//
//                        Text("3 hours")
//                            .foregroundColor(.white)
//                            .font(.subheadline.bold())
//                }
//                .frame(minWidth: 350, minHeight: 300)
//                .padding(.vertical, 20)
//                .background(.ultraThinMaterial)
//                .clipShape(RoundedRectangle(cornerRadius: 20))
//
//                Button {
//                    isShowingAlert = true
//                } label: {
//                    Text("OK Thank you")
//                        .font(.callout.bold())
//                        .foregroundColor(.white)
//                }
//            }
//        }
//        .alert("Alert Title", isPresented: $isShowingAlert) {
//            Button {
//
//            } label: {
//                Text("Button label")
//            }
//        } message: {
//            Text("message Title")
//        }
    }
    
//    func showSomeAlert() {
//        isShowingAlert = true
//    }
}


struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
