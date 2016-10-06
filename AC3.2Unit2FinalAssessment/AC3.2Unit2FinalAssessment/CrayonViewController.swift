//
//  CrayonViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Victor Zhong on 10/6/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

	@IBOutlet weak var crayonLabel: UILabel!
	
	var crayon: Crayon?
	
	override func viewDidLoad() {
        super.viewDidLoad()
		setupData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func setupData() {
		guard let cray = crayon else { return }
		self.crayonLabel.text = cray.name
		self.view.backgroundColor = (UIColor(red: CGFloat(cray.red), green: CGFloat(cray.green), blue: CGFloat(cray.blue), alpha:1.0))
		
		if cray.red == 0 && cray.green == 0 && cray.blue == 0 {
			self.crayonLabel.textColor = .white
		}
	}
}
