//
//  ViewController.swift
//  MyPlainingCards
//
//  Created by iMaxiOS on 4/18/18.
//  Copyright © 2018 iMaxiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipsCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipsCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiArray = ["👹", "👻", "👹", "👻"]
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipEmoji(withEmoji: emojiArray[cardNumber], on: sender)
            print("cardNumber = \(cardNumber)")
        } else {
            print("Card not")
        }
    }
    
    func flipEmoji(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

