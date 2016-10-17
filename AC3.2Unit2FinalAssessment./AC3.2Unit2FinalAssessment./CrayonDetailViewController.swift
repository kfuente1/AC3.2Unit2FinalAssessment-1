//
//  CrayonDetailViewController.swift
//  AC3.2Unit2FinalAssessment.
//
//  Created by Karen Fuentes on 10/16/16.
//  Copyright © 2016 Karen Fuentes. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    
    var detailCrayon: Crayon?

    @IBOutlet weak var crayonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let color = detailCrayon {
            view.backgroundColor = UIColor(red: CGFloat(color.red), green: CGFloat(color.green), blue: CGFloat(color.blue), alpha: 1.0)
            crayonLabel.text = color.name
        }
      
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
