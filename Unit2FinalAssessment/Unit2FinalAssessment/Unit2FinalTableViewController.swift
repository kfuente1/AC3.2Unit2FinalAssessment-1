//
//  Unit2FinalTableViewController.swift
//  Unit2FinalAssessment
//
//  Created by C4Q on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class Unit2FinalTableViewController: UITableViewController {
    
    var crayons = [Crayon]()
    
    //delegate method!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CRAYONS YO!"
        for c in crayolaColors {
            if let crayon = Crayon(fromRuthBaderGinsburg: c) {
                crayons.append(crayon)
            }
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    // MARK: - Table view data source
    
    //delegate methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return crayons.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Color Cell", for: indexPath)
        let currentColour = crayons[indexPath.row]
        let backgroundColor = UIColor(red: CGFloat(currentColour.red), green: CGFloat(currentColour.green), blue: CGFloat(currentColour.blue), alpha: 1.0)
        cell.backgroundColor = backgroundColor
        if currentColour.blue < 0.25 && currentColour.green < 0.25 && currentColour.red < 0.25 {
            cell.textLabel?.textColor = .white
        }
        cell.textLabel?.text = currentColour.name
        
        //cell.set = currentColour.name
        // Configure the cell...
        
        return cell
    }
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    //target-action method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tappedCell = sender as? UITableViewCell {
            if segue.identifier == "detailSegueID" {
                let dVC = segue.destination as? DetailViewController
                dVC?.view.backgroundColor = tappedCell.backgroundColor
                dVC?.label.textColor = tappedCell.textLabel?.textColor
                dVC?.label.text = tappedCell.textLabel?.text
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
}
