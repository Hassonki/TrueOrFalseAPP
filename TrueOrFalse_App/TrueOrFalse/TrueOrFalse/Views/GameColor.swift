//
//  GameColor.swift
//  TrueOrFalse
//
//  Created by Hassan Hussin on 2022-11-18.
//

import Foundation
import SwiftUI

struct GameColor {
    @State static var main = Color(red: 20/255, green: 28/255, blue: 58/255)
    static let accent = Color(red: 48/255, green: 105/255, blue: 240/255)
    static let correctGuess = Color.green
    static let incorrectGuess = Color.red
}
