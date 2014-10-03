//
//  SwiftMath.swift
//  SwiftlyObjectifying
//
//  Created by Peter Shearer on 10/2/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

import Foundation

class SwiftMath: NSObject {
// @objc class SwiftMath  { // alternateway
    
    /* // Only needed if you don't inherit from NSObject and use @objc instead
    class func newInstance() -> SwiftMath {
        return SwiftMath()
    }
    */
    
    func DoubleIt (number:Int32) -> Int32 {
        return number * 2
    }
}