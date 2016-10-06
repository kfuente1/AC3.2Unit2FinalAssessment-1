//
//  ButtonsViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Madushani Lekam Wasam Liyanage on 10/6/16.
//  Copyright © 2016 Madushani Lekam Wasam Liyanage. All rights reserved.
//

import UIKit

class ButtonsViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var valueSlider: UISlider!
    @IBOutlet weak var valueStepper: UIStepper!
    @IBOutlet weak var valueDisplayLabel: UILabel!
    @IBOutlet weak var valueInputTextField: UITextField!

  
    @IBAction func sliderValueChanged(_ sender: UISlider) {
      valueDisplayLabel.text = String(Int(valueSlider.value))
      valueInputTextField.text = String(Int(valueSlider.value))
      valueStepper.value = Double(valueSlider.value)
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valueDisplayLabel.text = String(Int(valueStepper.value))
        valueInputTextField.text = String(Int(valueStepper.value))
        valueSlider.value = Float(Int(valueStepper.value))
        
    }
    @IBAction func textFieldPopulated(_ sender: UITextField) {
     _ = textFieldDidEndEditing(valueInputTextField)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) -> Bool {
        valueDisplayLabel.text = valueInputTextField.text
        valueSlider.value = Float(valueInputTextField.text!)!
        valueStepper.value = Double(valueInputTextField.text!)!
        return true
        
    }
  
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool  {
        
        return true
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) -> Bool {
        

        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
   
            return false
       
    }
//    func textFieldDidEndEditing(_ textField: UITextField) -> Bool {
//        
//
//        return false
//        
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
