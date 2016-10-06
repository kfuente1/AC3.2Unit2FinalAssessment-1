//
//  CrayonViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Sabrina Ip on 10/6/16.
//  Copyright © 2016 Sabrina Ip. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    
    var name: String = ""
    var red: Double = 0
    var green: Double = 0
    var blue: Double = 0
    var color: UIColor = .white

    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorLabel.text = name
        view.backgroundColor = UIColor(colorLiteralRed: Float(red), green: Float(green), blue: Float(blue), alpha: 1)

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
