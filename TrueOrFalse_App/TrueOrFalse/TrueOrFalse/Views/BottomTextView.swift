//
//  BottomTextView.swift
//  TrueOrFalse
//
//  Created by Hassan Hussin on 2022-11-18.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                //.font(.body)
                .font(Font.custom("Helvetica", size: 37))
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
    
    struct BottomTextView_Previews: PreviewProvider {
        static var previews: some View {
            BottomTextView(str: "Test")
        }
    }
}
