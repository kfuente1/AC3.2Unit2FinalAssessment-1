//
//  ItemViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Victor Zhong on 10/6/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController, UITextFieldDelegate {
	
	@IBOutlet weak var slider: UISlider!
	@IBOutlet weak var stepper: UIStepper!
	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var textField: UITextField!
	var globalValue = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.textField.delegate = self
		// Do any additional setup after loading the view.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func syncGlobal() {
		label.text = String(globalValue)
		stepper.value = Double(globalValue)
		textField.text = String(globalValue)
		slider.value = Float(globalValue)
	}
	
	//Target Action
	@IBAction func sliderAction(_ sender: UISlider) {
		globalValue = Int(sender.value)
		syncGlobal()
	}
	
	//Target Action
	@IBAction func stepperAction(_ sender: UIStepper) {
		globalValue = Int(sender.value)
		syncGlobal()
	}
	
	// Delegate
	func textFieldsAreValid() -> Bool {
		if let textField = self.textField.text {
			guard let _ = Int(textField) else { return false }
		}
		return true
	}
	
	// Delegate
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		_ = self.textFieldsAreValid()
		self.view.endEditing(true)
		return false
	}
	
	// Delegate
	func textFieldDidEndEditing(_ textField: UITextField) {
		if let entry = Int(textField.text!) {
			if entry >= 0 && entry <= 10 {
				globalValue = entry
				syncGlobal()
			} else {
				self.label.text = "Value should be between 0 - 10"
			}
		} else {
			self.label.text = "Value should be a number"
		}
	}
}
