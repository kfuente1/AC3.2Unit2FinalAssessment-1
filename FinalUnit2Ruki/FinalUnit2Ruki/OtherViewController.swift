//
//  OtherViewController.swift
//  FinalUnit2Ruki
//
//  Created by Rukiye Karadeniz on 10/6/16.
//  Copyright © 2016 Rukiye Karadeniz. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mytextField: UITextField!

    
    
    
   // Mark: Outlets
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func slideIt(_ sender: UISlider) {
        myLabel.text = "\(Int(sender.value))"
        mytextField.text = "\(Int(sender.value))"
        
    }
    
    @IBAction func myStepper(_ sender: UIStepper) {
        myLabel.text = "\(Int(sender.value))"
        mytextField.text = "\(Int(sender.value))"
        
        //changing slider 
        self.mySlider.setValue(Float(sender.value), animated: true)
    }
    
    
}
