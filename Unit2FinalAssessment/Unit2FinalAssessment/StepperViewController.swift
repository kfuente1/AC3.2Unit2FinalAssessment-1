//
//  StepperViewController.swift
//  Unit2FinalAssessment
//
//  Created by C4Q on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValues(0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //target-action methods
    
    @IBAction func didElectricSlide(_ sender: UISlider) {
        setValues(Int(sender.value))
    }
    
    
    @IBAction func didStep(_ sender: UIStepper) {
        setValues(Int(sender.value))
    }
    
    
    //delegate method!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let number = Int(textField.text!) {
            if number < 101 {
                setValues(number)
            } else  {
                image.isHidden = false
                label.backgroundColor = .red
                label.textColor = .white
                label.text = "INVALID NUMBER"
            }
        }
        return true
    }
    
    
    //please input 101.
    func setValues (_ sender: Int) {
        image.isHidden = true
        image.alpha = 1.0
        label.backgroundColor = .white
        label.textColor = .black
        stepper.value = Double(sender)
        label.text = "\(sender)"
        textField.text = "\(sender)"
        slider.setValue(Float(sender), animated: false)
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
