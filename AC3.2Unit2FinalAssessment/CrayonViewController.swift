//
//  CrayonViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Ilmira Estil on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

    @IBOutlet weak var crayonTextLabel: UILabel!
    var crayonBackgroundColor = UIColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = crayonBackgroundColor
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
