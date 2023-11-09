//
//  WelcomeView.swift
//  TrueOrFalse
//
//  Created by Hassan Hussin on 2022-11-18.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack{
                GameColor.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("Välj rätt svar till följande påståenden")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    Spacer()
                    
                    NavigationLink(destination: GameView(),
                                   label: {
                        BottomTextView(str: "Då kör vi!")
                        
                        //.background(GameColor.accent)
                    })
                }
            }
            .foregroundColor(.white)
        }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
