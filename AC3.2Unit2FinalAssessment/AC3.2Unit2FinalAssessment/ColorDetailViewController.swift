//
//  ColorDetailViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tom Seymour on 10/6/16.
//  Copyright © 2016 C4Q-3.2. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    var thisCrayDetail: Crayon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = thisCrayDetail.name
        view.backgroundColor = UIColor(red: CGFloat(thisCrayDetail.red), green: CGFloat(thisCrayDetail.green), blue: CGFloat(thisCrayDetail.blue), alpha: 1.0)
    }
}
