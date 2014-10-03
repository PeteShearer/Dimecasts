//
//  ViewController.swift
//  SwiftlyObjectifying
//
//  Created by Peter Shearer on 10/2/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var objcMath = ObjCMath()
        var result = objcMath.SquareAndDouble(5)
        println("Squaring and Doubling 5 gives us \(result)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

