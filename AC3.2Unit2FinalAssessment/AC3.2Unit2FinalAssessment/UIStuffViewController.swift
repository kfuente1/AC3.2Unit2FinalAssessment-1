//
//  UIStuffViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tom Seymour on 10/6/16.
//  Copyright © 2016 C4Q-3.2. All rights reserved.
//

import UIKit

class UIStuffViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       textFieldOutlet.delegate = self
    }
    
    //MARK Target Action Methods
    @IBAction func sliderWasSlid(_ sender: UISlider) {
        stepperOutlet.value = Double(sender.value)
        labelOutlet.text = String(Int(sender.value))
        textFieldOutlet.text = String(Int(sender.value))
    }
    
    @IBAction func stepperWasStepped(_ sender: UIStepper) {
        sliderOutlet.value = Float(sender.value)
        labelOutlet.text = String(Int(sender.value))
        textFieldOutlet.text = String(Int(sender.value))
    }
        
    //MARK Delegate Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let textFieldText = textField.text else { return true }
        guard let textFieldNumber = Double(textFieldText) else { return true }
        stepperOutlet.value = textFieldNumber
        labelOutlet.text = String(Int(textFieldNumber))
        sliderOutlet.value = Float(textFieldNumber)
        return true
    }
    
}
