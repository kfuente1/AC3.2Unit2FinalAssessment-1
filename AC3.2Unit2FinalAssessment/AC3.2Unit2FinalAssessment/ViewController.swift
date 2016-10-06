//
//  ViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Kareem James on 10/6/16.
//  Copyright © 2016 Kareem James. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var label: UILabel!

        override func viewDidLoad() {
        super.viewDidLoad()
        
            stepper.maximumValue = 100
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func stepperChanged(_ sender: UIStepper) {
    label.text = Int(sender.value).description
    
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
    
        let currentValue = Int(sender.value)
        
        label.text = "\(currentValue)"
    
    }
    @IBAction func textField(_ sender: UITextField) {
    
    }
}


