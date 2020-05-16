//
//  CalculatorViewController.swift
//  Calculator_V1
//
//  Created by Kittinun Chobtham on 16/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var buttonTitle: UIButton!
    @IBOutlet weak var buttonColor: UIButton!
    
    var numberOnScreen :Double = 0
    var previousNumber :Double = 0
    var operation = 0
    var isPerformingMath =  false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }

    @IBAction func numberButton(_ sender: Any) {
        
        buttonTitle.setTitle("C", for: .normal)
        
        let tag = (sender as! UIButton).tag
        
            if isPerformingMath == true {
                isPerformingMath = false
                resultLabel.text = String(tag - 1)
                numberOnScreen = Double(resultLabel.text!)!
            }
            else{
                resultLabel.text = resultLabel.text! + String(tag - 1)
                numberOnScreen = Double(resultLabel.text!)!
            }
    }
    @IBAction func operaterButton(_ sender: Any) {
        
        
        buttonTitle.setTitle("C", for: .normal)
        
        let tag = (sender as! UIButton).tag
        if tag == 16 {
            resultLabel.text = ""
            numberOnScreen = 0
            previousNumber = 0
            operation = 0
            return
        }

            if tag == 11{
                isPerformingMath = true
                previousNumber = Double(resultLabel.text!)!
                resultLabel.text = "0"
                operation = tag
                }
            if tag == 12{
                isPerformingMath = true
                previousNumber = Double(resultLabel.text!)!
                resultLabel.text = "0"
                operation = tag
            }
            if tag == 13{
                isPerformingMath = true
                previousNumber = Double(resultLabel.text!)!
                resultLabel.text = "0"
                operation = tag
            }
            if tag == 14{
                isPerformingMath = true
                previousNumber = Double(resultLabel.text!)!
                resultLabel.text = "0"
                operation = tag
            }
            if tag == 17{
                resultLabel.text = String(numberOnScreen / 100)
            }
        
        if tag == 15{
            //=
            if operation == 11 {
                resultLabel.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 12{
                resultLabel.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 13{
                resultLabel.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 14{
                resultLabel.text = String(previousNumber + numberOnScreen)
            }
        }
    }
}
