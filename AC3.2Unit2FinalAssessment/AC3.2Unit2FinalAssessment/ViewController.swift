//
//  ViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Amber Spadafora on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var sliderScale: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func stepper(_ sender: UIStepper) {
        sender.maximumValue = 10
        sender.minimumValue = 0
        sliderScale.setValue(Float(sender.value), animated: true)
        label.text = "\(Int(sender.value))"
        
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        label.text = "\(currentValue)"
        
    }
    
    @IBAction func textFieldEdited(_ sender: UITextField) {
        label.text = "\(sender.text!)"
        
    }
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        
    }

    // MARK: TextField Delegations
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("\n + SHOULD BEGIN") // replace this with the function shorthand
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("\n + SHOULD BEGIN") // replace this with the function shorthand
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("\n +  SHOULD BEGIN") // replace this with the function shorthand
        
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("\n +  SHOULD BEGIN") //
        if (textField.text?.characters.count)! > 2 {
            label.text = "Please enter a number 1-10"
            return false
        }
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        label.text = textField.text
        if let userInput = Int(textField.text!) {
            sliderScale.value = Float(userInput)
        }
        print("yolo")
    }
    
  
    

}
