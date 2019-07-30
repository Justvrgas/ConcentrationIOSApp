//
//  Card.swift
//  Concentration
//
//  Created by Justin Vargas on 7/29/19.
//  Copyright © 2019 Justin Vargas. All rights reserved.
//

import Foundation


struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    init(identifier: Int){
        self.identifier = identifier
    }
    
}
