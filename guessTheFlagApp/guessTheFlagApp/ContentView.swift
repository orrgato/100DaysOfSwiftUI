//
//  ContentView.swift
//  guessTheFlagApp
//
//  Created by Shiwam verma on 11/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var AlertTitle = ""
    @State private var userScore = 0
    @State private var numberOfGames = 1
    @State private var GameDidEnd = false
    
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.blue,.black]), startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
//            RadialGradient(gradient: Gradient(colors: [.green,.red]), center: .center, startRadius: 20, endRadius: 200)
//                .ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)], center: .center, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Guess The Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of: ")
                            .font(.subheadline.weight(.heavy))
                            .foregroundColor(.secondary)
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                            .foregroundColor(.primary)
                    }
                    ForEach(0..<3) { num in
                        Button {
                            flagTapped(num)
    //                        print("floaf was pressed")
                        } label: {
                            Image(countries[num])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                Text("Score \(userScore)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
            }.padding()
        }
        .alert(AlertTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your Score is \(userScore)")
        }
        .alert("Game Over", isPresented: $GameDidEnd) {
            Button("Restart", action: resetGameStats)
        } message: {
            Text("Your Final score is \(userScore) out of 8 ")
        }
    }
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            AlertTitle = "Correct"
            userScore += 1
        }else {
            AlertTitle = "Wrong! That's the flag of \(countries[number])"
        }
        showingScore = true
    }
    
    func askQuestion() {
        
        if(numberOfGames > 7) {
            GameDidEnd = true
        }
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        numberOfGames += 1
    }
    
    func resetGameStats() {
        userScore = 0
        numberOfGames = 1
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
