//
//  FirstViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Eric Chang on 10/6/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  @IBOutlet weak var colorTitle: UILabel!
  var thisColorTitle = " "
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
   colorTitle.text = thisColorTitle
    
  }



}

