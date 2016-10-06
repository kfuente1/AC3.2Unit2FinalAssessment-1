//
//  ControlsViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Harichandan Singh on 10/6/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import UIKit

class ControlsViewController: UIViewController, UITextFieldDelegate {
    
    
    //MARK: - Outlets
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        label.text = "Numbers will spawn here."
    }
    
    //MARK: - Actions - TARGET ACTION METHODS
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        label.text = String(Int(sender.value))
        stepper.value = Double(sender.value)
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        label.text = String(Int(sender.value))
        slider.value = Float(sender.value)
    }
    
    //MARK: - Utility function for UITextFieldDelegate Method
    func textField(_ textField: UITextField) -> Bool {
        var x: Bool
        if (textField.text?.isEmpty)! {
            x = true
        } else {
            x = false
        }
        return x
    }
    
    //MARK: - UITextField DELEGATE METHOD
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.textField {
            let isEmpty: Bool = self.textField(textField)
            if isEmpty {
                label.text = "Write something before returning!"
            } else {
                label.text = "You have successfully returned using the delegate"
            }
        }
        return true
    }

}
