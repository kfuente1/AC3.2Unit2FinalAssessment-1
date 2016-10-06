//
//  ValueUpdateViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Ana Ma on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ValueUpdateViewController: UIViewController, UITextFieldDelegate{

    var ultimateValue = 0.0
    
    @IBOutlet weak var valueUpdateSlider: UISlider!
    
    @IBOutlet weak var valueUpdateStepper: UIStepper!
    
    @IBOutlet weak var valueDisplayLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        valueDisplayLabel.text = "0.0"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderTapped(_ sender: UISlider) {
        ultimateValue = Double(Int(sender.value))
        sender.setValue(Float(ultimateValue), animated: false)
        valueDisplayLabel.text = "\(ultimateValue)"
        //valueDisplayLabel.text = "\(sender.value)" //float
        valueUpdateStepper.value = ultimateValue
    }
    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        ultimateValue = sender.value
        //ultimateValue = sender.stepValue
        valueDisplayLabel.text = "\(ultimateValue)"
        //valueDisplayLabel.text = "\(sender.value)" //double
        //print(valueEnterTextField.text!)
        valueUpdateStepper.value = ultimateValue
    }
    
    @IBAction func textFieldInput(_ sender: UITextField) {
        valueDisplayLabel.text = sender.text
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        valueDisplayLabel.text = textField.text
        print("ABC \n\n\n\n\n\n\n\n\n\n\n\n")
        print(textField.text)
        //print(valueEnterTextField.text)
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let double = Double(string) {
            valueDisplayLabel.text = String(double)
            return true
        } else {
            valueDisplayLabel.text = "This is not a valid value"
            return false
        }
        //if textField == valueEnterTextField{
            
        //}
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(textField.text)
        return true
    }
   /*
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        valueEnterTextField.text = String(valueEnterTextField.text)
        if let double = Double(textField.text!) {
            valueEnterTextField.text = String(double)
            return true
        } else {
            valueEnterTextField.text = "This is not a valid value"
            return false
        }
    }
*/

}
