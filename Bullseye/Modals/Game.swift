//
//  Game.swift
//  Bullseye (iOS)
//
//  Created by heesungjang on 2022/01/05.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1..<100)
  var score: Int = 0
  var round: Int = 1
  
  func points(sliderValue:Int) -> Int{
    var difference: Int = self.target - sliderValue
    if difference < 0 {
      difference = difference * -1
    }
    var awardedValue = 100 - difference
    return awardedValue
  }
}
