//
//  CrayonViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Harichandan Singh on 10/6/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    var labelContent: String = ""
    
    //MARK: - Outlets
    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorNameLabel.text = labelContent
        // Do any additional setup after loading the view.
    }

}
