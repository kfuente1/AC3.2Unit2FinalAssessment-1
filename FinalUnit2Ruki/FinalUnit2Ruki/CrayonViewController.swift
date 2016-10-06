//
//  CrayonViewController.swift
//  FinalUnit2Ruki
//
//  Created by Rukiye Karadeniz on 10/6/16.
//  Copyright © 2016 Rukiye Karadeniz. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

    
    @IBOutlet weak var labelForSegue: UILabel!
    
    var mySegue = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelForSegue.text = mySegue
    
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
