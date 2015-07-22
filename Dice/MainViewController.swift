//
//  ViewController.swift
//  Dice
//
//  Created by Nick Wood on 7/21/15.
//  Copyright (c) 2015 Nick Wood. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  // These variables will be set by a two column picker on the main screen. They represent the number of dice the user is rolling  (numberOfDice) and the number of sides on each of those dice (dieSides). Rolls of mixed die type not supported in v1 of the app. Default value is 4d20, because best dice.
  
  var numberOfDice: Int = 4
  var dieSides: Int = 20
  var rollResults: [Roll] = []
  
  // This array holds the results of each roll. Entries are an object subclassed from the Roll class. Their specific properties can be accessed, including number of dice, die sides, and scores of individual die rolls within the Roll.
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func rollButtonPressed() {
    println("You pressed the roll button. Rad.")
  }
}

