//
//  JSONTestTests.swift
//  JSONTestTests
//
//  Created by Sergi Maymí on 26/11/14.
//  Copyright (c) 2014 Buzz Factory. All rights reserved.
//

import UIKit
import XCTest

class JSONTestTests: XCTestCase {
  
  var jsonObject: [String:AnyObject]?
  
  let gameResponse = [
    "_id": "fafefa",
    "num_players": 3,
    "state": "READY_TO_PLAY",
    "current_round": 2,
    "used_words": ["MOLA", "HOLA", "OLA"],
    "board": ["A","LL","A","C","E", "P"],
    "letterBag": ["F","CC","I","D","N", "M", "I", "O", "S","T","NY"]/*,
    "players": [[
    "id": 1,
    "username":"JAN",
    "rounds": ["words":["HOLA", "OLA"]]],[
    "id": 3,
    "username": "MARTA",
    "rounds": ["words":["MOLA", "HOLA", "OLA"]]],[
    "id": 2,
    "username": "SERGI",
    "rounds": ["words":["HOLA", "OLA"]]]
    ]*/
  ]
  
  
  let gameJSON = "{\"_id\":\"fefafe\",\"num_players\":2,\"state\":\"WAITING_FOR_PLAYER\",\"current_round\":1,\"used_words\":[\"OCELL\",\"BORINOT\",\"CUA\"],\"board\":[\"A\",\"X\",\"A\",\"O\",\"T\",\"N\"],\"letterBag\":[\"T\",\"A\"],\"players\":[{\"id\":1,\"username\":\"JAN\",\"rounds\":[{\"id\":1,\"words\":[\"OCELL\",\"BORINOT\",\"CUA\"]}]},{\"id\":2,\"username\":\"MARTA\",\"rounds\":[]}]}"
  
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    var error: NSError?
    let jsonObjTmp: AnyObject! = NSJSONSerialization.JSONObjectWithData((gameJSON as NSString).dataUsingEncoding(NSUTF8StringEncoding)!, options: NSJSONReadingOptions(0), error: &error)
    if error == nil {
      if let jsonObjTmp = jsonObjTmp as? [String:AnyObject] {
        self.jsonObject = jsonObjTmp
      }
    }
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    // This is an example of a functional test case.
    XCTAssert(true, "Pass")
  }
  
  func testId() {
    // This is an example of a functional test case.
    var property: String?
    property <<< gameResponse["_id"]
    XCTAssert(property == "fafefa", "Id should be 'fafefa'")
  }
  
  func testCurrentRound() {
    // This is an example of a functional test case.
    var property: Int?
    property <<< gameResponse["current_round"]
    XCTAssert(property == 2, "current_round should be 2")
  }
  
  func testGameInstance() {
    var game = Game(data: self.jsonObject!)
    XCTAssert(game.id == "fefafe", "Id should be 'fefafe'")
  }
  
  
  func testGameInstancePlayers() {
    var game = Game(data: self.jsonObject!)
    XCTAssert(game.players?.count == 2, "Should be 2 players in the game")
    XCTAssert(game.players?[0].username == "JAN", "Player one should be Jan")
    XCTAssert(game.players?[0].rounds?.count == 1, "Player one should have 1 round")
    XCTAssert(game.players?[0].rounds?.words?.count == 1, "Player one should have 1 round an one word")
  }
}
