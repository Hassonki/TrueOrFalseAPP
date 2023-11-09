//
//  GameViewModel.swift
//  TrueOrFalse
//
//  Created by Hassan Hussin on 2022-11-19.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject{ //observableobject protokoll
    
    //published properties
    @Published private var game = Game()
    
    //internal properties
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgresstext: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        }else {
            return false
        }
    }
    
    var correctGuesses: Int {
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    func makeGuess(atIndex index: Int){
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color (forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex{
                return GameColor.main
            }else if guessedIndex == currentQuestion.correctAnswerIndex{
                return GameColor.correctGuess
            }else{
                return GameColor.incorrectGuess
            }
        }else {
            return GameColor.main
        }
    }
}
