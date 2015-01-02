//
//  Game.swift
//  JSONTest
//
//  Created by Sergi Maymí on 26/11/14.
//  Copyright (c) 2014 Buzz Factory. All rights reserved.
//

import Foundation

class Game: Deserializable {
  var id: String?
  var state: String?
  var numPlayers: Int?
  var currentRound: Int?
  var doc: NSDate?
  var players: [Player]?
  var board: [String]?
  
  required init(data: [String: AnyObject]) {
    state <<< data["state"]
    numPlayers <<< data["num_players"]
    currentRound <<< data["current_round"]
    id <<< data["_id"]
    doc <<< data["doc"]
    players = [Player]()
    players <<<<* data["players"]
    board = [String]()
    board <<< data["board"]
  }
  
  init() {}
  
}