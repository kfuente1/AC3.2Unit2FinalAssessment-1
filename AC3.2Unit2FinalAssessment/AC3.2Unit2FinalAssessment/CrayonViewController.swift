//
//  CrayonViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Eashir Arafat on 10/6/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    var colorNameVar = ""
    
    @IBOutlet weak var colorName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorName.text = colorNameVar
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
