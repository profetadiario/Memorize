//
//  ContentView.swift
//  Memorize
//
//  Created by Enrique on 24/08/23.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👹","☠️","🤖","👾","🎃","👽","💩","🐒","🐶","🐷","🐸","🦄"]
    @State var cardCount = 4
    var body: some View {
        VStack{
            HStack {
                ForEach(0..<cardCount, id: \.self){ index in
                    CardView(content: emojis[index])
                }
            }
            .foregroundColor(.orange)
            
            HStack {
                Button(action: {
                    if cardCount > 1{
                        cardCount -= 1
                        
                    }
                }, label: {
                    Image(systemName: "rectangle.stack.badge.minus")
                })
                Spacer()
                }

                
                Button(action: {
                    if cardCount < emojis.count {
                        cardCount += 1
                        
                    }
                }, label: {
                    Image(systemName: "rectangle.stack.badge.plus")
                })
                }
                .imageScale(.large)
                .font(.largeTitle)
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
