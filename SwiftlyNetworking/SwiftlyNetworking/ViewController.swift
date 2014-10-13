//
//  ViewController.swift
//  SwiftlyNetworking
//
//  Created by Peter Shearer on 10/13/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var users: [PlaceholderUser] = [PlaceholderUser]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var url = NSURL(string: "http://jsonplaceholder.typicode.com/users")
        var request = NSURLRequest(URL: url)
        var operation = AFHTTPRequestOperation(request: request)
        operation.responseSerializer = AFJSONResponseSerializer()
        
        operation.setCompletionBlockWithSuccess({ (operation:AFHTTPRequestOperation!, responseObject:AnyObject!) -> Void in
            let responseDict = responseObject as Array<AnyObject>
            
            for inner in responseDict {
                let innerDict = inner as Dictionary<String, AnyObject>
                var user = PlaceholderUser.initWithDictionary(innerDict)
                self.users.append(user)
            }
            
            self.outputUsers()
            
            }, failure: { (operation: AFHTTPRequestOperation!, error:NSError!) -> Void in
                println(error.description)
        })
        
        operation.start()
    }
    
    func outputUsers() {
        for user in self.users {
            println(user.description())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

