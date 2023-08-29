//
//  ContentView.swift
//  Memorize
//
//  Created by Enrique on 24/08/23.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👹","☠️","🤖","👾"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    let content: String
    @State var isFacedUp = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFacedUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }
            else {
                base
            }
        }
        .onTapGesture {
            isFacedUp.toggle()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
