//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Enrique on 24/08/23.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    var viewModel: EmojiMemoryGame = EmojiMemoryGame()//just cheating up here, will set this up soon correctly
    
    var body: some View {
        ScrollView{
            cards
            
        }
        .padding()
    }
    var cards : some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85), spacing: 0)], spacing: 0) {
            ForEach(viewModel.cards.indices, id: \.self) { index in
                CardView(viewModel.cards[index])
                    .aspectRatio(2/3, contentMode: .fit)
                    .padding(4)
            }
        }.foregroundColor(.orange)
    }
    
    
    struct CardView: View {
        let card: MemoryGame<String>.Card
        
        init(_ card: MemoryGame<String>.Card) {
            self.card = card
        }
        
        var body: some View {
            ZStack {
                let base = RoundedRectangle(cornerRadius: 12)
                Group {
                    base.fill(.white)
                    base.strokeBorder(lineWidth: 3)
                    Text(card.content)
                        .font(.system(size: 75))
                        .minimumScaleFactor(0.01)
                        .aspectRatio(1, contentMode: .fit)
                }
                .opacity(card.isFaceUp ? 1 : 0)
                
                base.fill()
                    .opacity(card.isFaceUp ? 0 : 1)
            }
        }
    }
    
    
    struct EmojiMemoryGameView_Previews: PreviewProvider {
        static var previews: some View {
            EmojiMemoryGameView()
        }
    }
    
}
