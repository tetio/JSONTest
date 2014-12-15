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
  var jsonObject1: [String:AnyObject]?
  var jsonLetterConfig: [String:AnyObject]?
  
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
  
  let lettersJSON1 = "{\"_id\": \"CA\", \"letters\": [{\"letter\": \"A\", \"file\": \"A\", \"quantity\": 12, \"value\": 1},{\"letter\": \"B\", \"file\": \"B\", \"quantity\": 2, \"value\": 3},{\"letter\": \"C\", \"file\": \"C\", \"quantity\": 3, \"value\": 2},{\"letter\": \"D\", \"file\": \"D\", \"quantity\": 3, \"value\": 2},{\"letter\": \"E\", \"file\": \"E\", \"quantity\": 13, \"value\": 1},{\"letter\": \"F\", \"file\": \"F\", \"quantity\": 1, \"value\": 4},{\"letter\": \"G\", \"file\": \"G\", \"quantity\": 2, \"value\": 3}, {\"letter\": \"H\", \"file\": \"H\", \"quantity\": 1, \"value\": 8}, {\"letter\": \"I\", \"file\": \"I\", \"quantity\": 8, \"value\": 1},{\"letter\": \"J\", \"file\": \"J\", \"quantity\": 1, \"value\": 8}, {\"letter\": \"L\", \"file\": \"L\", \"quantity\": 4, \"value\": 1},{\"letter\": \"M\", \"file\": \"M\", \"quantity\": 3, \"value\": 2},{\"letter\": \"N\", \"file\": \"N\", \"quantity\": 6, \"value\": 1},{\"letter\": \"NY\", \"file\": \"NY\", \"quantity\": 1, \"value\": 10},{\"letter\": \"O\", \"file\": \"O\", \"quantity\": 5, \"value\": 1},{\"letter\": \"P\", \"file\": \"P\", \"quantity\": 2, \"value\": 2},{\"letter\": \"Q\", \"file\": \"Q\", \"quantity\": 1, \"value\": 8},{\"letter\": \"R\", \"file\": \"R\", \"quantity\": 8, \"value\": 1},{\"letter\": \"S\", \"file\": \"S\", \"quantity\": 8, \"value\": 1},{\"letter\": \"T\", \"file\": \"T\", \"quantity\": 5, \"value\": 1},{\"letter\": \"U\", \"file\": \"U\", \"quantity\": 4, \"value\": 1},{\"letter\": \"V\", \"file\": \"V\", \"quantity\": 1, \"value\": 4},{\"letter\": \"X\", \"file\": \"X\", \"quantity\": 1, \"value\": 10},{\"letter\": \"Z\", \"file\": \"Z\", \"quantity\": 1, \"value\": 8},{\"letter\": \"Ç\", \"file\": \"CC\", \"quantity\": 1, \"value\": 10},{\"letter\": \"L·L\", \"file\": \"LL\", \"quantity\": 1, \"value\": 10}]}"
  
  let gameJSON1 = "{\"_id\":\"54894749899f0ba65a394fe4\",\"language\":\"CA\",\"num_players\":1,\"max_players\":2,\"state\":\"CREATED\",\"current_round\":1,\"board\":[[{\"letter\":\"G\",\"value\":3}],[{\"letter\":\"T\",\"value\":1}],[{\"letter\":\"N\",\"value\":1}],[{\"letter\":\"Q\",\"value\":8}],[{\"letter\":\"E\",\"value\":1}],[{\"letter\":\"R\",\"value\":1}],[{\"letter\":\"E\",\"value\":1}],[{\"letter\":\"O\",\"value\":1}],[{\"letter\":\"C\",\"value\":2}],[{\"letter\":\"S\",\"value\":1}],[{\"letter\":\"E\",\"value\":1}],[{\"letter\":\"X\",\"value\":10}],[{\"letter\":\"I\",\"value\":1}],[{\"letter\":\"L\",\"value\":1}],[{\"letter\":\"D\",\"value\":2}],[{\"letter\":\"L·L\",\"value\":10}]],\"letters_bag\":[{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"A\",\"value\":1},{\"letter\":\"B\",\"value\":3},{\"letter\":\"B\",\"value\":3},{\"letter\":\"C\",\"value\":2},{\"letter\":\"C\",\"value\":2},{\"letter\":\"D\",\"value\":2},{\"letter\":\"D\",\"value\":2},{\"letter\":\"E\",\"value\":1},{\"letter\":\"E\",\"value\":1},{\"letter\":\"E\",\"value\":1},{\"letter\":\"E\",\"value\":1},{\"letter\":\"E\",\"value\":1},{\"letter\":\"E\",\"value\":1},{\"letter\":\"E\",\"value\":1},{\"letter\":\"E\",\"value\":1},{\"letter\":\"E\",\"value\":1},{\"letter\":\"E\",\"value\":1},{\"letter\":\"F\",\"value\":4},{\"letter\":\"G\",\"value\":3},{\"letter\":\"H\",\"value\":8},{\"letter\":\"I\",\"value\":1},{\"letter\":\"I\",\"value\":1},{\"letter\":\"I\",\"value\":1},{\"letter\":\"I\",\"value\":1},{\"letter\":\"I\",\"value\":1},{\"letter\":\"I\",\"value\":1},{\"letter\":\"I\",\"value\":1},{\"letter\":\"J\",\"value\":8},{\"letter\":\"L\",\"value\":1},{\"letter\":\"L\",\"value\":1},{\"letter\":\"L\",\"value\":1},{\"letter\":\"M\",\"value\":2},{\"letter\":\"M\",\"value\":2},{\"letter\":\"M\",\"value\":2},{\"letter\":\"N\",\"value\":1},{\"letter\":\"N\",\"value\":1},{\"letter\":\"N\",\"value\":1},{\"letter\":\"N\",\"value\":1},{\"letter\":\"N\",\"value\":1},{\"letter\":\"NY\",\"value\":10},{\"letter\":\"O\",\"value\":1},{\"letter\":\"O\",\"value\":1},{\"letter\":\"O\",\"value\":1},{\"letter\":\"O\",\"value\":1},{\"letter\":\"P\",\"value\":2},{\"letter\":\"P\",\"value\":2},{\"letter\":\"R\",\"value\":1},{\"letter\":\"R\",\"value\":1},{\"letter\":\"R\",\"value\":1},{\"letter\":\"R\",\"value\":1},{\"letter\":\"R\",\"value\":1},{\"letter\":\"R\",\"value\":1},{\"letter\":\"R\",\"value\":1},{\"letter\":\"S\",\"value\":1},{\"letter\":\"S\",\"value\":1},{\"letter\":\"S\",\"value\":1},{\"letter\":\"S\",\"value\":1},{\"letter\":\"S\",\"value\":1},{\"letter\":\"S\",\"value\":1},{\"letter\":\"S\",\"value\":1},{\"letter\":\"T\",\"value\":1},{\"letter\":\"T\",\"value\":1},{\"letter\":\"T\",\"value\":1},{\"letter\":\"T\",\"value\":1},{\"letter\":\"U\",\"value\":1},{\"letter\":\"U\",\"value\":1},{\"letter\":\"U\",\"value\":1},{\"letter\":\"U\",\"value\":1},{\"letter\":\"V\",\"value\":4},{\"letter\":\"Z\",\"value\":8},{\"letter\":\"Ç\",\"value\":10}],\"used_words\":[],\"doc\":\"2014-12-11T07:27:05.347Z\",\"players\":[{\"id\":0,\"username\":\"gigo\",\"rounds\":[]}]}"
  
  
  let gameJSON = "{\"_id\":\"fefafe\",\"num_players\":2,\"state\":\"WAITING_FOR_PLAYER\",\"current_round\":1,\"used_words\":[\"OCELL\",\"BORINOT\",\"CUA\"],\"board\":[\"A\",\"X\",\"A\",\"O\",\"T\",\"N\"],\"letterBag\":[\"T\",\"A\"],\"players\":[{\"id\":1,\"username\":\"JAN\",\"rounds\":[{\"id\":1,\"words\":[\"OCELL\",\"BORINOT\",\"CUA\"]}]},{\"id\":2,\"username\":\"MARTA\",\"rounds\":[]}]}"
  
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    var error: NSError?
    var jsonObjTmp: AnyObject! = NSJSONSerialization.JSONObjectWithData((gameJSON as NSString).dataUsingEncoding(NSUTF8StringEncoding)!, options: NSJSONReadingOptions(0), error: &error)
    if error == nil {
      if let jsonObjTmp = jsonObjTmp as? [String:AnyObject] {
        self.jsonObject = jsonObjTmp
      }
    }

    jsonObjTmp = NSJSONSerialization.JSONObjectWithData((gameJSON1 as NSString).dataUsingEncoding(NSUTF8StringEncoding)!, options: NSJSONReadingOptions(0), error: &error)
    if error == nil {
      if let jsonObjTmp = jsonObjTmp as? [String:AnyObject] {
        self.jsonObject1 = jsonObjTmp
      }
    }

    jsonObjTmp = NSJSONSerialization.JSONObjectWithData((lettersJSON1 as NSString).dataUsingEncoding(NSUTF8StringEncoding)!, options: NSJSONReadingOptions(0), error: &error)
    if error == nil {
      if let jsonObjTmp = jsonObjTmp as? [String:AnyObject] {
        self.jsonLetterConfig = jsonObjTmp
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
    XCTAssert(game.players?[0].rounds?[0].words?.count == 3, "Player one should have 1 round and three words")
  }

  func testGameInstancePlayers1() {
    var game = Game(data: self.jsonObject1!)
    XCTAssert(game.players?.count == 1, "Should be 1 players in the game")
    XCTAssert(game.players?[0].username == "gigo", "Player one should be gigo")
  }

  func testLetterConfig1() {
    var letterConf = LetterConfig(data: self.jsonLetterConfig!)
    XCTAssert(letterConf.letters?.count > 0, "There should be letters")
    XCTAssert(letterConf.letters?["A"]?.letter == "A", "First letter should be A")
    XCTAssert(letterConf.letters?["Ç"]?.value == 10, "Ç value is 10")
    XCTAssert(letterConf.language == "CA", "Language/_id should be CA")

  }
  
}
