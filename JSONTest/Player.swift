//
//  Player.swift
//  JSONTest
//
//  Created by Sergi Maymí on 29/11/14.
//  Copyright (c) 2014 Buzz Factory. All rights reserved.
//

import Foundation

class Player: Deserializable {
  var id: Int?
  var username: String?
  var rounds: [Round]?
  
  required init(data: [String:AnyObject]) {
    id <<< data["id"]
    username <<< data["username"]
    rounds = [Round]()
    rounds <<<<* data["rounds"]
  }
  
  init(){}
}