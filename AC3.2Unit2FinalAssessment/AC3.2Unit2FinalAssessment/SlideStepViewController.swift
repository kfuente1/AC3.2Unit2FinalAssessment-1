//
//  SlideStepViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Ilmira Estil on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class SlideStepViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slideStepLabel: UILabel!
    @IBOutlet weak var slideStepTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slideStepLabel.text = "Fun"
        slideStepTextField.text = "0"

    }

    //MARK: Target-Action Methods
    @IBAction func slider(_ sender: UISlider) {
        slideStepLabel.text = "\(Int(sender.value))"
        slideStepTextField.text = "\(Int(sender.value))"
    }

    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        //BAHH Delegates??
        //silly stepper fail
        let oldValue = sender.value
        if oldValue < sender.value {
            slider.value = (Float(slider.value)) - (Float(sender.value))
        } else {
            slider.value = (Float(slider.value)) + (Float(sender.value))
        }
        
        slideStepLabel.text = "\(Int(sender.value))"
        slideStepTextField.text = "\(Int(sender.value))"
    }


}
