//
//  ViewController.swift
//  Concentration
//
//  Created by Justin Vargas on 7/29/19.
//  Copyright © 2019 Justin Vargas. All rights reserved.
//

//left off at 34:09 on concentration.swift

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    
    var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    
    @IBAction func newGame(_ sender: Any) {
        for index in cardButtons.indices{
            game.cards[index].isFaceUp = false
            game.cards[index].isMatched = false
        }
        game.cards.shuffle()
        flipCount = 0
        updateViewFromModel()
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender){
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        }
        else{
            print("chosen card not in cardButtons")
        }
        
    }
    
    func updateViewFromModel(){
        for index in cardButtons.indices{
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }
                
            else{
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
            
        }
    }
    
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
    
    var emojiChoices = ["👻", "💯", "😈", "😸", "🔫", "🍑", "🍎","🍬", "😱"]
    
    var emoji = /*Dictionary<Int, String>() same as ->*/ [Int:String]()
    
    func emoji(for card: Card) -> String{
        if emoji[card.identifier] == nil, emojiChoices.count > 0{
                let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
                emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
            }
        
//        if emoji[card.identifier] != nil{
//            return emoji[card.identifier]!
//        }
//        else{
//            return "?"
//        }
//      Code above is the same as the line below
        return emoji[card.identifier] ?? "?"
    }

}

