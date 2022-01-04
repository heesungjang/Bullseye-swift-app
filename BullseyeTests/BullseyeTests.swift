//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by heesungjang on 2022/01/05.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
  
  var game: Game!
  
  override func setUpWithError() throws {
    game = Game()
  }
  
  override func tearDownWithError() throws {
    game = nil
  }
  
  func testScorePositive(){
    let guess = game.target + 5
    let score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 95)
  }
  
  func testScoreNegative(){
    let guess = game.target - 5
    let score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 95)
  }
    
}
