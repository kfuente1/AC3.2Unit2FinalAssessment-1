//
//  ControlsViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Jermaine Kelly on 10/6/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit

class ControlsViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var currentValueLabel: UILabel!
    @IBOutlet weak var valueEnterdTextfield: UITextField!
    
    var currentValue = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    //MARK: Actions
    @IBAction func sliderChangeValue(_ sender: UISlider) {
        updateControls(senderValue: Int(sender.value))
    }
    
    @IBAction func stepperChangeValue(_ sender: UIStepper) {
        updateControls(senderValue: Int(sender.value))
    }
    
    
    
    //MARK: Delegations
    //calls function when enter is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        updateControls(senderValue: Int(textField.text!)!)
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == self.valueEnterdTextfield && string != "" {
            return self.string(string, containsOnly: CharacterSet.decimalDigits.union(CharacterSet.whitespaces))
        }
        
        return true
    }
    
    
    //MARK: Utilies
    
    //Updates controls visually
    func updateControls(senderValue:Int){
        self.currentValue = senderValue
        slider.value = Float(currentValue)
        stepper.value = Double(currentValue)
        currentValueLabel.text = String(currentValue)
        
    }
    
    //Checks to if values entered are numbers
    func string(_ string: String, containsOnly characterSet: CharacterSet) -> Bool {
        // fill in code
        for character in string.unicodeScalars{
            if characterSet.contains(character){
                return true
            }
        }
        
        return false
    }
    
    
    
    
    
    
    
}
