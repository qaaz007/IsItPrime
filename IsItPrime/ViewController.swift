//
//  ViewController.swift
//  IsItPrime
//
//  Created by Adnan Aziz on 4/12/15.
//  Copyright (c) 2015 Adnan Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var number: UITextField!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var numberInt = number.text.toInt()
        var isPrime = true
        
        if (numberInt != nil) {

            var unwrappedNumber = numberInt!
            
            if (unwrappedNumber ==  1) {
                isPrime = false
            }
            
            if ((unwrappedNumber != 2) && (unwrappedNumber != 1)) {
                for (var i=2; i<unwrappedNumber; i++) {
                    if (unwrappedNumber%i == 0) {
                        isPrime = false
                    }
                }
                
            }
            
            if (isPrime == true) {
                resultLabel.text = "\(unwrappedNumber) is Prime!"
            }
            else {
                resultLabel.text = "\(unwrappedNumber) is not Prime!"
            }
            
        }
        else {
            resultLabel.text = "Plz enter no. in the box"
        }
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

