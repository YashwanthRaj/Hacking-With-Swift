//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Yashwanth Raj Varadharajan on 6/27/24.
//  PROJECT TWO PART TWO

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var corretAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var userScore = 0
    @State private var numberOfQuestions = 1
    
    var body: some View {
        
        ZStack{
            // LinearGradient(colors: [.blue,.white], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: .blue, location: 0.3),
                .init(color: .red, location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess The Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                VStack(spacing: 15){
                    VStack{
                        Text("Tap the correct flag")
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[corretAnswer])
                            .font(.largeTitle.weight(.semibold))
                    } .foregroundColor(.secondary)
                    
                    ForEach(0..<3){ number in
                        Button{
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        }.alert(scoreTitle, isPresented: $showingScore) {
                            // Button("Continue", action: askQuestion)
                            if numberOfQuestions == 8 {
                                Button("Restart", action: askQuestion)
                            } else {
                                Button("Continue", action: askQuestion)
                            }
                        } message: {
                            if numberOfQuestions == 8 {
                                Text("The test has ended, your final score is: \(userScore)")
                            } else{
                                Text("Your score is \(userScore)")
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(userScore)")
                    .foregroundStyle(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.bold())
                
                Text("Question Number: \(numberOfQuestions)").foregroundStyle(.white)
                
                Spacer()
            }.padding()
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == corretAnswer {
            scoreTitle = "Correct"
            userScore += 1
        } else {
            scoreTitle = "Wrong, Thats the flag of \(countries[number])"
        }

        showingScore = true
    }
    
    func askQuestion() {
        if numberOfQuestions < 8{
            countries.shuffle()
            corretAnswer = Int.random(in: 0...2)
            numberOfQuestions += 1
        } else if numberOfQuestions == 8 {
            // The quiz restarts
            numberOfQuestions = 1
            userScore = 0
        }
        
    }
}

#Preview {
    ContentView()
}
