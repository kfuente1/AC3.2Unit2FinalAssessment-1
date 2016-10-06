//
//  CrayonViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by John Gabriel Breshears on 10/6/16.
//  Copyright © 2016 John Gabriel Breshears. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    
    @IBOutlet weak var colorLabel: UILabel!
    var colors: [Crayon]?
    
    ///can get the types to match....
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let theColors = colors {
            colorLabel.text = theColors
            
        }
        
        // Do any additional setup after loading the view.
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
