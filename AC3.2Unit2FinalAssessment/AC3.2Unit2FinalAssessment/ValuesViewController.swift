//
//  FirstViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Marcel Chaucer on 10/6/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import UIKit

class ValuesViewController: UIViewController {
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var textfieldOutlet: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Code I found that's supposed to only allow Int input in a textfield
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
        
    {
        let numberOnly = NSCharacterSet.init(charactersIn: "0123456789")
        let stringFromTextField = NSCharacterSet.init(charactersIn: string)
        let strValid = numberOnly.isSuperset(of: stringFromTextField as CharacterSet)
        
        return strValid
    }
    @IBAction func sliderAction(_ sender: UISlider) {
       stepperOutlet.value = Double(sender.value)
        labelOutlet.text = String(Int(sender.value))
        textfieldOutlet.text = String(Int(sender.value))
    }
    @IBAction func stepperAction(_ sender: UIStepper) {
        sliderOutlet.value = Float(sender.value)
        labelOutlet.text = String(Int(sender.value))
        textfieldOutlet.text = String(Int(sender.value))
    }
    
    //Could not figure out how to get textfield input to interact with Slider and Stepper
    @IBAction func textFieldAction(_ sender: UITextField) {
        labelOutlet.text = sender.text
    }
    
    
    
}

