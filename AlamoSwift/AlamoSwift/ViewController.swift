//
//  ViewController.swift
//  AlamoSwift
//
//  Created by Peter Shearer on 11/2/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var users: [PlaceholderUser] = [PlaceholderUser]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request(.GET, "http://jsonplaceholder.typicode.com/users")
            .progress { (bytesWritten, totalBytesWritten, totalBytesToWrite) -> Void in
                println("\(totalBytesWritten) of \(totalBytesToWrite)")
            }
            .responseJSON{ (request, response, json, error) -> Void in
                if let test = json as? Array<AnyObject>
                {
                    for inner in test {
                        let innerDict = inner as Dictionary<String, AnyObject>
                        var user = PlaceholderUser.initWithDictionary(innerDict)
                        self.users.append(user)
                    }
                    
                    self.outputUsers()
                }
                else
                {
                    println("Cast Failed")
                }
        }
    }
    
    func outputUsers() {
        for user in self.users {
            println(user.description())
        }
    }

}

