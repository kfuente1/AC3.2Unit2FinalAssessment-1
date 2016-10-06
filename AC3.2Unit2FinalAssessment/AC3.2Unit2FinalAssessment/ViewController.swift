//
//  ViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Sabrina Ip on 10/6/16.
//  Copyright © 2016 Sabrina Ip. All rights reserved.
//

import UIKit

var currentValue = 5

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sliderTouched(_ sender: UISlider) {
        currentValue = Int(sender.value)
        stepper.value = Double(currentValue)
        textField.text = String(currentValue)
        valueLabel.text = "Current number: \(currentValue)"
    }
    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        currentValue = Int(sender.value)
        slider.value = Float(currentValue)
        textField.text = String(currentValue)
        valueLabel.text = "Current number: \(currentValue)"
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            if let num = Double(text) {
                currentValue = Int(round(num))
                slider.value = Float(currentValue)
                stepper.value = Double(currentValue)
                valueLabel.text = "Current number: \(currentValue)"
            } else {
                valueLabel.text = "Input needs to be a number. Current number: \(currentValue)"
                textField.text = String(currentValue)
            }
        }
    }

    
}

