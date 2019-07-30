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
    
    
    var game = Concentration()
    
    var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["👻", "🎃", "🧛‍♀️", "👻", "🎃", "🧛‍♀️"]
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            print("cardnumber = \(cardNumber)")
        }
        else{
            print("chosen card not in cardButtons")
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
    
    

}

