//
//  ViewController.swift
//  JSONTest
//
//  Created by Sergi Maymí on 26/11/14.
//  Copyright (c) 2014 Buzz Factory. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class ViewController: UIViewController {
  
  var game: Game!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    fetchGameData("54aaa37aa85345feb0995517")
    
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  private func fetchGameData(game: String) {
    
    let urlString = "http://localhost:8080/game/\(game)"
    let url = NSURL(string: urlString)!
    println("Requesting from escriva: \(url)")
    
/*
    let request = NSURLRequest(URL: url)
    NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) {
      (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
      
      if error != nil {
        println("fetchGameData: Error found while requesting data.")
        return
      }
      
      var error: NSError?
      let jsonObject: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(0), error: &error)
      if error == nil {
        if let jsonObject = jsonObject as? [String:AnyObject] {
          self.game = Game(data: jsonObject)
//          self.game = Game()
//          var string = NSString(data: data, encoding: NSUTF8StringEncoding)
//          self.game <<<< string
          println("Game created OK:\(self.game?.id)")
        }
      } else {
        println("fetchGameData: Error found while extracting JSON data.")
      }
    }

    
    
    Alamofire.request(.GET, urlString, parameters: ["test":1])
      .responseJSON{(request, response, json, error) in
        if (error != nil) {
          println("Error: \(error)")
        } else {
          self.game = Game(data: json as [String:AnyObject])
          println("Game created OK:\(self.game.id) State :\(self.game.state)")
        }
    }
*/
  }
}

