//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit
@available(iOS 13.0, *)

class ViewController: UIViewController {
    
    // player 1 is X, player 2 is O
    var activePlayer = 1
    
    var tagPlacement = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    @IBOutlet var gameButtons: [GameButton]!
   
    @IBOutlet weak var colRow0: GameButton!
    @IBOutlet weak var colRow1: GameButton!
    @IBOutlet weak var colRow2: GameButton!
    @IBOutlet weak var colRow3: GameButton!
    @IBOutlet weak var colRow4: GameButton!
    @IBOutlet weak var colRow5: GameButton!
    @IBOutlet weak var colRow6: GameButton!
    @IBOutlet weak var colRow7: GameButton!
    @IBOutlet weak var colRow8: GameButton!
    
    @IBOutlet weak var displayLabel: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    displayLabel.text = "Let's Play Tic Tac Toe!"
  }
    
    @IBAction func newGame(_ sender: UIButton) {
        
        displayLabel.text = "Play Again!"
        
        colRow0.setImage(UIImage(systemName: ""), for:.normal)
        colRow1.setImage(UIImage(systemName: ""), for:.normal)
        colRow2.setImage(UIImage(systemName: ""), for:.normal)
        colRow3.setImage(UIImage(systemName: ""), for:.normal)
        colRow4.setImage(UIImage(systemName: ""), for:.normal)
        colRow5.setImage(UIImage(systemName: ""), for:.normal)
        colRow6.setImage(UIImage(systemName: ""), for:.normal)
        colRow7.setImage(UIImage(systemName: ""), for:.normal)
        colRow8.setImage(UIImage(systemName: ""), for:.normal)
    }
    
    @IBAction func gameButtonPressed(_ gameButton: GameButton) {
        print("at row \(gameButton.row) at column \(gameButton.col)")
        
        let position = gameButton.tag - 0
        
        if tagPlacement[position] == 0 {
            
            tagPlacement[position] = activePlayer
            
            if activePlayer == 1 {
                gameButton.setImage(UIImage(systemName: "xmark"), for:.normal)
                activePlayer = 2
            } else {
                gameButton.setImage(UIImage(systemName: "circle"), for:.normal)
                activePlayer = 1
            }
        }
    }
    

}

