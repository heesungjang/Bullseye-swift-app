//
//  Game.swift
//  Bullseye (iOS)
//
//  Created by heesungjang on 2022/01/05.
//

import Foundation

struct Game {
  var target = Int.random(in: 1..<100)
  var score = 0
  var round = 1
  
  func points(sliderValue:Int) -> Int{
    return 100 - abs(target - sliderValue)
  }
}
