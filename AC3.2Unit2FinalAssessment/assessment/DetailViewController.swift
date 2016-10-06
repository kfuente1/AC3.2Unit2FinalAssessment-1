//
//  DetailViewController.swift
//  assessment
//
//  Created by Thinley Dorjee on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

    @IBAction func homeSlider(_ sender: UISlider) {
        let color = UIColor(hue: CGFloat(sender.value), saturation: 1.0, brightness: 1.0, alpha: 1.0)
        homeLabel.text = String(describing: color)
        homeTextField.text = String(describing: color)
    }
    
    @IBAction func homeStepper(_ sender: UIStepper) {
//        var colorValueChage = sender.value
//            colorValueChage = homeSlider.UIColor.value.change
    }
    
    @IBOutlet weak var homeLabel: UILabel!
    
    @IBAction func homeButton(_ sender: UIButton) {
        homeLabel.text = String(describing: homeTextField.text)
    }
    
    @IBOutlet weak var homeTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        homeButton(self)
//        return true
//    }

}
