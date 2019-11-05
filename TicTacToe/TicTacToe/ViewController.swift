//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

//@available(iOS 13.0, *)
class ViewController: UIViewController {
    
//    let xMark = UIImage(systemName: "xmark")
    
    @IBOutlet var gameButtons: [GameButton]!
    

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    @IBAction func gameButtonPressed(_ gameButton: GameButton) {
        print("at row \(gameButton.row) at column \(gameButton.col)")
        
        gameButton.setImage(UIImage(named: "xmark"), for: [])
    }
    

}

