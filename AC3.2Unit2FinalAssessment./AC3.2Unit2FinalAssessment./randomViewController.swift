//
//  randomViewController.swift
//  AC3.2Unit2FinalAssessment.
//
//  Created by Karen Fuentes on 10/16/16.
//  Copyright © 2016 Karen Fuentes. All rights reserved.
//

import UIKit

class randomViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    
    @IBAction func movedSlider(_ sender: UISlider) {
        stepper.value = Double(slider.value)
        textfield.text = String(slider.value)
        label.text = String(slider.value)
    }
    
    @IBAction func touchedStepper(_ sender: UIStepper) {
        slider.value = Float(stepper.value)
        textfield.text = String(stepper.value)
        label.text = String(stepper.value)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, let float = Float(text), let double = Double(text) {
            stepper.value = double
            slider.value = float
            label.text = text
        }
        return true
    }
}
