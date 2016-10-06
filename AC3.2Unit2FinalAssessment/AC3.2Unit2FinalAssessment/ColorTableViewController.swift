//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Victor Zhong on 10/6/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
	
	var crayons = [Crayon]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		for c in crayolaColors {
			if let crayon = Crayon(fromDict: c) {
				crayons.append(crayon)
			}
		}
		
		// Uncomment the following line to preserve selection between presentations
		// self.clearsSelectionOnViewWillAppear = false
		
		// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
		// self.navigationItem.rightBarButtonItem = self.editButtonItem()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.crayons.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "colorTVCID", for: indexPath) as! ColorTableViewCell
		
		let crayon = crayons[indexPath.row]
		cell.colorLabel.text = crayon.name
		cell.backgroundColor = (UIColor(red: CGFloat(crayon.red), green: CGFloat(crayon.green), blue: CGFloat(crayon.blue), alpha:1.0))
		
		if crayon.red == 0 && crayon.green == 0 && crayon.blue == 0 {
			cell.colorLabel.textColor = .white
		}
		
		return cell
	}
	
	// MARK: - Navigation
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let selectedColorCell: ColorTableViewCell = sender as? ColorTableViewCell {
			if segue.identifier == "crayonSegue" {
				let crayonController = segue.destination as! CrayonViewController
				let cellIndexPath: IndexPath = self.tableView.indexPath(for: selectedColorCell)!
				let selectedColor = crayons[cellIndexPath.row]
				crayonController.crayon = selectedColor
			}
		}
	}
}
