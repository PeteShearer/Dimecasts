//
//  ViewController.swift
//  HelloSwift
//
//  Created by Peter Shearer on 9/8/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonWasClicked(sender: UIButton) {
        var backgroundColor = UIColor.whiteColor()
        
        /*
            // Bug in compiler
            http://stackoverflow.com/questions/24269905/swift-uibutton-textlabel-text-value-not-useable-in-switch-statement
        */
        
        if let text = sender.titleLabel?.text {
            switch text {
                case "Red":
                    backgroundColor = UIColor.redColor()
                case "Blue":
                    backgroundColor = UIColor.blueColor()
                case "Green":
                    backgroundColor = UIColor.greenColor()
                default:
                    break
            }
            
            self.view.backgroundColor = backgroundColor
            outputLabel.text = "The background is now \(text)"
        }
        else {
            // sender.titleLabel is nil
            println("The button's label was nil somehow")
        }
    }

}

