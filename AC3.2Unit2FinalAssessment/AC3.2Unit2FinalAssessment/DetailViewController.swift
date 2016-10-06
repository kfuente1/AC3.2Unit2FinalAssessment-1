//
//  CrayonViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tong Lin on 10/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    internal var crayon: Crayon!
    @IBOutlet weak var crayonName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        _ = setView(data: crayon)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    
    internal func setView(data crayon: Crayon){
        navigationItem.title = crayon.name
            
        view.backgroundColor = UIColor(red: CGFloat(crayon.red), green: CGFloat(crayon.green), blue: CGFloat(crayon.blue), alpha: 1.0)
        self.crayonName.text = crayon.name
        if crayon.name == "Black"{
            self.crayonName.textColor = UIColor.white
        }
    }
 
 

}
