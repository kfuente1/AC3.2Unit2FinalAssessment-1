//
//  ColorViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Jermaine Kelly on 10/6/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    

    @IBOutlet weak var colorNameLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidLayoutSubviews() {
        checkForBlack()
    }

  
    
    // Checks for the color name "Black" and sets the text color to white
    func checkForBlack(){
        //print(colorNameLabel.text)
        if colorNameLabel.text == "Black"{
            colorNameLabel.textColor = .white
        }
    
    }

}
