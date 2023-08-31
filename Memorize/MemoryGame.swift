//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Enrique on 30/08/23.
//

import Foundation

struct MemoryGame<CardContent> {
    
    private(set) var cards: Array<Card>
    
    init (numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = []
        //add numberOFPairsOfCards x 2 cards
        for pairIndex in 0..<max (2,numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card( content: content))
            cards.append(Card( content: content))

        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
    }
}
