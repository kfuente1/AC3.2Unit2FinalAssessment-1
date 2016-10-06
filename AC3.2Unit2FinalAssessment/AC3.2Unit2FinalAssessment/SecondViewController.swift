//
//  SecondViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Eric Chang on 10/6/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

  @IBOutlet weak var ourSlider: UISlider!
  @IBOutlet weak var ourStepper: UIStepper!
  @IBOutlet weak var ourLabel: UILabel!
  @IBOutlet weak var ourTextField: UITextField!
  var ourValue = 0

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Delegate
    self.ourTextField.delegate = self
  }
  
  func syncValues() {
    ourSlider.value = Float(ourValue)
    ourStepper.value = Double(ourValue)
    ourLabel.text = String(ourValue)
    ourTextField.text = String(Int(ourValue))
  }
  // Action
  @IBAction func sliderSlid(_ sender: UISlider) {
    ourValue = Int(sender.value)
    syncValues()
  }
  // Action
  @IBAction func stepperStepped(_ sender: UIStepper) {
    ourValue = Int(sender.value)
    syncValues()
  }
  // Delegate
  func textFieldDidEndEditing(_ textField: UITextField) {
    if let newValue = Int(textField.text!) {
      ourValue = newValue
      syncValues()
    }
  }
  // Delegate
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    _ = self.textFieldsAreValid()
    self.view.endEditing(true)
    return false
  }
  
  func textFieldsAreValid() -> Bool {
    
    if let textField = self.ourTextField.text {
      guard let _ = Int(textField) else { return false }
    }
    
    return true
  }
}

