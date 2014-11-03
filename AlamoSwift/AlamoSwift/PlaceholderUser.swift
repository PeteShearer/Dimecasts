//
//  PlaceholderUser.swift
//  AlamoSwift
//
//  Created by Peter Shearer on 11/2/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

import Foundation

class PlaceholderUser {
    
    var userId:String = ""
    var userName:String = ""
    var name:String = ""
    var email:String = ""
    var phone:String = ""
    var website:String = ""
    
    class func initWithDictionary(innerDict: Dictionary<String, AnyObject>) -> PlaceholderUser {
        var user = PlaceholderUser()
        
        user.userName = (innerDict["username"] as AnyObject?) as String
        user.userId = String(format:"%.0f", (innerDict["id"] as AnyObject?) as Double)
        user.name = (innerDict["name"] as AnyObject?) as String
        user.email = (innerDict["email"] as AnyObject?) as String
        user.phone = (innerDict["phone"] as AnyObject?) as String
        user.website = (innerDict["website"] as AnyObject?) as String
        
        return user
    }
    
    func description() -> String {
        return "Id: \(self.userId) Name: \(self.name) User Name: \(self.userName) Email: \(self.email) Phone: \(self.phone) Website: \(self.website)"
    }
}