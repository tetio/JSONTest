//
//  LetterConfig.swift
//  JSONTest
//
//  Created by Sergi Maymí on 15/12/14.
//  Copyright (c) 2014 Buzz Factory. All rights reserved.
//

import Foundation

class LetterConfig: Deserializable {
  var letters: [String: Letter]?
  var language: String?
  
  required init(data: [String: AnyObject]) {
    var lettersTmp = [Letter]()
    lettersTmp <<<<* data["letters"]
    letters = lettersTmp.reduce([:]) {
      (var dict:Dictionary, e:Letter) in
        if let key = e.letter {
          dict[key] = e
        }
      return dict
    }
//    letters = toDictionary(lettersTmp) {($0.letter!, $0)}
    language <<< data["_id"]
  }
  
  
  init() {}

  // A nice generics example ;)
  func toDictionary<E, K, V>(
    array:       [E],
    transformer: (element: E) -> (key: K, value: V)?)
    -> Dictionary<K, V> {
    return array.reduce([:]) {
      (var dict, e) in
      if let (key, value) = transformer(element: e) {
        dict[key] = value
      }
      return dict
    }
  }
}