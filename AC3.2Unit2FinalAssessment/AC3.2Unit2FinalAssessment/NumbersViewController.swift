//
//  ViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Simone Grant on 10/6/16.
//  Copyright © 2016 Simone Grant. All rights reserved.
//

import UIKit
import Foundation

class NumbersViewController: UIViewController {

    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var numberStepper: UIStepper!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var numberField: UITextField!
    
    var value = 1
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func textEdit(_ sender: AnyObject) {
        if let number = numberField.text, !number.isEmpty {
            value = Int(number)!
            numberLabel.text = number
            numberStepper.value = Double(value)
            numberSlider.value = Float(value)
            
        }
    }

    func updateNumLabel()  {
        if let text = numberField.text {
            numberLabel.text = text
        }
    }
    
    @IBAction func slideNumber(_ sender: UISlider) {
       numberSlider.value = roundf(sender.value)
        value = Int(numberSlider.value)
        numberLabel.text = String(Int(value))
        numberStepper.value = Double(numberSlider.value)
    }
  
    @IBAction func numberStep(_ sender: UIStepper) {
        numberStepper.value = round(sender.value)
        value = Int(numberStepper.value)
        numberLabel.text = String(Int(value))
        numberSlider.value = Float(numberStepper.value)
        
    }
}
