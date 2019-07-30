//
//  Concentration.swift
//  Concentration
//
//  Created by Justin Vargas on 7/29/19.
//  Copyright © 2019 Justin Vargas. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    func chooseCard(at index: Int){
        
    }
    
    init(numberOfPairsOfCards: Int){
        for identifier in 0..<numberOfPairsOfCards{
            let card = Card(identifier: identifier)
            cards.append(card)
            cards.append(card)
        }
        
        
    }
    
}
