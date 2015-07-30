//
//  ViewController.swift
//  Dice
//
//  Created by Nick Wood on 7/21/15.
//  Copyright (c) 2015 Nick Wood. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  let numberOfDice = 1
  let dieSides = UInt32(6)
  var individualScores = [Int]()
  var totalRoll: Int = 0
  
  @IBOutlet weak var answerLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func rollDice(numberOfDice: Int, dieSides: UInt32) {
    var count = 1
    
    if (totalRoll > 0) {
    totalRoll = 0
    }
    
    do {
      var result = Int(arc4random_uniform(dieSides) + 1)
      
      individualScores.append(result)
      totalRoll += result
      count++
    } while (count <= numberOfDice);
  }
  
  @IBAction func rollD6(sender: AnyObject) {
    rollDice(numberOfDice, dieSides: dieSides)
    answerLabel.text = "Total is \(totalRoll)"
  }
}