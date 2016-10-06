//
//  ViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Annie Tung on 10/6/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    
    var color: String!
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorLabel.text = color
        // Do any additional setup after loading the view, typically from a nib.
    }



}

