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
  
  func testNewRound() {
    game.startNewRound(points: 100)
    XCTAssertEqual(game.score, 100)
    XCTAssertEqual(game.round, 2)
  }
  
  func testScoreExact(){
    let guess = game.target
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 200)
  }
  func testScoreClose(){
    let guess = game.target + 2
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 98 + 50)
  }
  
  func testNewStart(){
    XCTAssertNotEqual(game.score, 0)
    XCTAssertNotEqual(game.round, 1)
//    game.restar()
    XCTAssertEqual(game.score, 0)
    XCTAssertEqual(game.round, 1)

  }
}
