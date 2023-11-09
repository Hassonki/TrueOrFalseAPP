//
//  QuestionView.swift
//  TrueOrFalse
//
//  Created by Hassan Hussin on 2022-11-19.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack{
        Text(question.questionText)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
    }
    Spacer()
    HStack{
        ForEach(0..<question.possibleAnswers.count) { answerIndex in
            Button(action: {
                print("Tapped on the \(question.possibleAnswers[answerIndex]) option")
                viewModel.makeGuess(atIndex: answerIndex)
            }, label: {
                ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    .background(viewModel.color(forOptionIndex: answerIndex))
            })
            .disabled(viewModel.guessWasMade) //kan endast klicka en gång
        }
        
    }
    if viewModel.guessWasMade {
        Button(action: { viewModel.displayNextScreen() }) {
                BottomTextView(str: "Next")
            }
        }
    }
}


struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
