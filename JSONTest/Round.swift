//
//  Round.swift
//  JSONTest
//
//  Created by Sergi Maymí on 29/11/14.
//  Copyright (c) 2014 Buzz Factory. All rights reserved.
//

import Foundation

class Round: Deserializable {
  var words: [String]?
  var id: Int?
  
  required init(data: [String: AnyObject]) {
    id <<< data["id"]
    words = [String]()
    words <<<* data["words"]
  }
  
  init() {}
}