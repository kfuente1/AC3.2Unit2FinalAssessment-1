//
//  ViewController.swift
//  AC3.2 Unit 2 Final Assessment Project
//
//  Created by Edward Anchundia on 10/6/16.
//  Copyright © 2016 Edward Anchundia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var numberStepper: UIStepper!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let step: Float = 10
        
        let roundedStepValue = round(sender.value / step) * step
        sender.value = roundedStepValue
        
        numberLabel.text = "\(sender.value)"
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        numberLabel.text = "\(sender.value)"
    }


}

