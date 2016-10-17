//
//  CrayonTableViewController.swift
//  AC3.2Unit2FinalAssessment.
//
//  Created by Karen Fuentes on 10/16/16.
//  Copyright © 2016 Karen Fuentes. All rights reserved.
//

import UIKit

class CrayonTableViewController: UITableViewController {
    
    var crayons = [Crayon]()
    var selectedCrayon: Crayon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
      
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return crayons.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayons", for: indexPath)
        
        let crayonAtIndexPath = self.crayons[indexPath.row]
        
        cell.textLabel?.text = crayonAtIndexPath.name
        
        cell.backgroundColor = UIColor(red: CGFloat(crayonAtIndexPath.red), green: CGFloat(crayonAtIndexPath.green), blue: CGFloat(crayonAtIndexPath.blue), alpha: 1.0)

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedCrayon = self.crayons[indexPath.row]
        
        performSegue(withIdentifier: "crayonDetail", sender: selectedCrayon)
        
        
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "crayonDetail" {
            if let destination = segue.destination as? CrayonDetailViewController {
                destination.detailCrayon = sender as? Crayon
            }
        }
    }


}
