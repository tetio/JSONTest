//
//  Letter.swift
//  JSONTest
//
//  Created by Sergi Maymí on 15/12/14.
//  Copyright (c) 2014 Buzz Factory. All rights reserved.
//

import Foundation

class Letter: Deserializable {
  var fileName: String?
  var letter: String?
  var value: Int?
  var quantity: Int?
  
  required init(data: [String: AnyObject]) {
    fileName <<< data["file"]
    letter <<< data["letter"]
    value <<< data["value"]
    quantity <<< data["quantity"]
  }
  
  init() {}
}