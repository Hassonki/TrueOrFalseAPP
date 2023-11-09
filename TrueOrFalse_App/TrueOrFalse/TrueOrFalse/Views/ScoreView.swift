//
//  ScoreView.swift
//  TrueOrFalse
//
//  Created by Hassan Hussin on 2022-11-19.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:")
                    .font(.title)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("\(viewModel.percentage)%")
                    .font(.system(size:60))
                    .bold()
                    .padding()
                Spacer()
                VStack{
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }.font(.system(size:40))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Gör om Quiz")
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
