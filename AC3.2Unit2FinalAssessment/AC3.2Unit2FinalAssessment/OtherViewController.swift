//
//  OtherViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tong Lin on 10/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        _ = self.setting()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    @IBAction func sliderUpdate(_ sender: UISlider) {
        self.stepper.value = Double(sender.value)
        self.label.text = String(sender.value)
        self.textField.text = String(sender.value)
    }
    
    @IBAction func stepperUpdate(_ sender: UIStepper) {
        self.slider.value = Float(sender.value)
        self.label.text = String(sender.value)
        self.textField.text = String(sender.value)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("did end")
    }
    
    internal func textFieldUpdate() -> Bool{
        self.slider.value = Float(textField.text!)!
        self.stepper.value = Double(textField.text!)!
        self.label.text = textField.text
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    // only interested in doing this validation for self.nameTextField
    // and per documentation, string can be empty if the change is a deletion
    
        if textField == self.textField && string != "" {
            return false
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        _ = textFieldUpdate()
        return true
    }

    internal func setting(){
        self.slider.value = 50
        self.stepper.value = 50
        self.label.text = "50"
        self.textField.text = "50"
        
    }
}
