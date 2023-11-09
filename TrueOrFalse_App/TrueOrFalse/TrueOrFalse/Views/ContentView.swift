//
//  ContentView.swift
//  TrueOrFalse
//
//  Created by Hassan Hussin on 2022-11-17.
//

import SwiftUI

struct GameView: View {
    let question = Question(questionText: "UDP segment innehåller sekvensnummer", possibleAnswers: ["True","False"], correctAnswerIndex: 1)
    
    @State var mainColor = Color(red: 20/255,green: 28/255, blue:58/255)
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1 / 10")
                    .font(.title)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                    Spacer()
                HStack{
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on the \(question.possibleAnswers[answerIndex]) option")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                    
                }
            }
        }.foregroundColor(.white)
        
        //VStack {
          //  Text("Welcome to TrueOrFalse!")
                
            
            //    .padding()
            //Button(action: {
              //  print("Clicked")
            //}, label: {
              //  Text("Click me")
            //})
            //.padding()
            //.background(Color.blue)
            //.foregroundColor(.white)
        //}
        //VStack {
          //  Image(systemName: "globe")
            //    .imageScale(.large)
              //  .foregroundColor(.accentColor)
                //.padding()
        //ChoiceTextView(choiceText: question.possibleAnswers[0])}
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }
}
