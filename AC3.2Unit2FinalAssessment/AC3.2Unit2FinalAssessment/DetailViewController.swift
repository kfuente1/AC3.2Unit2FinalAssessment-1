//
//  DetailViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Annie Tung on 10/6/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var sliderBar: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func sliderChanged(_ sender: UISlider) { //target-action
        sender.maximumValue = 50
        sender.minimumValue = 0
        sender.isContinuous = true;
        label.text = "Slider: \(Int(sender.value))"
    }


    @IBAction func stepperTapped(_ sender: UIStepper) {
        label.text = "Slider: \(Int(sender.value))"
        self.sliderBar.value = Float(sender.value) //stackoverflow: this sets the slider to stick
    }

    
    @IBAction func textFieldChanged(_ sender: UITextField) { //needs a textFiedDelegate class
        label.text = self.textField.text
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let tappedVC: 
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 */
    

}
