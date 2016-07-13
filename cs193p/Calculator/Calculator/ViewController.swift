//
//  ViewController.swift
//  Calculator
//
//  Created by Shahbaaz Hussain on 7/13/16.
//  Copyright © 2016 Shahbaaz Hussain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
    
    var userInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userInTheMiddleOfTyping == true {
            let currentDisplay = display.text!
            display.text = currentDisplay + digit
        } else {
            display.text = digit
        }
        userInTheMiddleOfTyping = true
        
    }
    
    @IBAction func performOperation(sender: UIButton) {
        userInTheMiddleOfTyping = false
        
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
            
        }
        
    }
    

}

