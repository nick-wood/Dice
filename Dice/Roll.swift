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
  
  init(numberOfDice: Int, dieSides: Int) {
    
    self.numberOfDice = numberOfDice
    self.dieSides = dieSides
  }
}