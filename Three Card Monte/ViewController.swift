//
//  ViewController.swift
//  Three Card Monte
//
//  Created by Luis Calle on 10/16/17.
//  Copyright © 2017 Luis Calle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var winLoseLabel: UILabel!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var winLabel: UILabel!
    @IBOutlet var loseLabel: UILabel!
    
    var kingIsHere: UIButton!
    var loseCounter = 0
    var winCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        winLabel.text = "wins: \(winCounter)"
        loseLabel.text = "Loses: \(loseCounter)"
        
        button1.tag = Int(arc4random_uniform(2))
        if button1.tag == 1 {
            button2.tag = 0
            button3.tag = 0
            kingIsHere = button1
            return
        }
        
        button2.tag = Int(arc4random_uniform(2))
        if button2.tag == 1 {
            button1.tag = 0
            button3.tag = 0
            kingIsHere = button2
            return
        }
        
        button3.tag = Int(arc4random_uniform(2))
        if button3.tag == 1 {
            button1.tag = 0
            button2.tag = 0
            kingIsHere = button3
            return
        }
        button1.tag = 0
        button2.tag = 1
        button3.tag = 0
        kingIsHere = button2
    }
    
    
//    @IBAction func chooseCard(_ sender: UIButton) {
//        guard let card: String = sender.currentTitle else {
//            return
//        }
//        switch card {
//        case "King":
//            winLoseLabel.text = "You won"
//        default:
//            winLoseLabel.text = "You lose"
//        }
//        button1.isEnabled = false
//        button2.isEnabled = false
//        button3.isEnabled = false
//    }
    
    @IBAction func chooseCard(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            winLoseLabel.text = "You won!"
            sender.setImage(#imageLiteral(resourceName: "DarkMagician"), for: .normal)
            winCounter += 1
            winLabel.text = "Wins: \(winCounter)"
        default:
            winLoseLabel.text = "You lose!"
            sender.setImage(#imageLiteral(resourceName: "Kuriboh"), for: .normal)
            kingIsHere.setImage(#imageLiteral(resourceName: "DarkMagician"), for: .normal)
            loseCounter += 1
            loseLabel.text = "Loses: \(loseCounter)"
        }
        
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
    }
    
    @IBAction func startNewGame(_ sender: UIButton) {
        button1.tag = Int(arc4random_uniform(2))
        if button1.tag == 1 {
            button2.tag = 0
            button3.tag = 0
            
            kingIsHere = button1
            
            button1.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
            button2.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
            button3.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
            
            button1.isEnabled = true
            button2.isEnabled = true
            button3.isEnabled = true
            
            winLoseLabel.text = "Pick a card:"
            
            return
        }
        button2.tag = Int(arc4random_uniform(2))
        if button2.tag == 1 {
            button1.tag = 0
            button3.tag = 0
            
            kingIsHere = button2
            
            button1.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
            button2.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
            button3.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
            
            button1.isEnabled = true
            button2.isEnabled = true
            button3.isEnabled = true
            
            winLoseLabel.text = "Pick a card:"
            
            return
        }
        
        button3.tag = Int(arc4random_uniform(2))
        if button3.tag == 1 {
            button1.tag = 0
            button2.tag = 0
            
            kingIsHere = button3
            
            button1.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
            button2.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
            button3.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
            
            button1.isEnabled = true
            button2.isEnabled = true
            button3.isEnabled = true
            
            winLoseLabel.text = "Pick a card:"
            
            return
        }
        button1.tag = 0
        button2.tag = 1
        button3.tag = 0
        kingIsHere = button2
        
        button1.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
        button2.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
        button3.setImage(#imageLiteral(resourceName: "CardBack"), for: .normal)
        
        button1.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
        winLoseLabel.text = "Pick a card:"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
