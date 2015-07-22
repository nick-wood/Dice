//
//  Roll.swift
//  Dice
//
//  Created by Nick Wood on 7/21/15.
//  Copyright (c) 2015 Nick Wood. All rights reserved.
//

import Foundation

class Roll {
  
  let numberOfDice: Int
  let dieSides: Int
  
  var individualScores = [Int]()
  var totalRoll: Int = 0
  
  init(numberOfDice: Int, dieSides: Int) {
    
    self.numberOfDice = numberOfDice
    self.dieSides = dieSides
  }
  
  func rollDice(numberOfDice: Int, dieSides: UInt32) {
    
    var count = 1
    
    do {
      
      var result = Int(arc4random_uniform(dieSides))
      
      individualScores.append(result)
      totalRoll += result
      count++
      
    } while (count <= numberOfDice);
  }

  
}