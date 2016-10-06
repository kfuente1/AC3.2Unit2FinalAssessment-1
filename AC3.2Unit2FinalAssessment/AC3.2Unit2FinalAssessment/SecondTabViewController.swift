//
//  SecondTabViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Eashir Arafat on 10/6/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class SecondTabViewController: UIViewController, UITextFieldDelegate {
    
    var universalValue: Int?
    var setValue: Int?
    
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderValues(_ sender: UISlider) {
        if universalValue == nil {
            universalValue = Int(sender.value)
            numLabel.text = String(describing: universalValue!)
        }
        else {
        universalValue = setValue
        numLabel.text = String(describing: universalValue)
        }
        
    }
  
    @IBAction func stepValues(_ sender: UIStepper) {
        
        if universalValue == nil {
            universalValue = Int(sender.value)
            numLabel.text = String(describing: universalValue!)
        }
        else {
            universalValue = setValue
            numLabel.text = String(describing: universalValue)
        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
