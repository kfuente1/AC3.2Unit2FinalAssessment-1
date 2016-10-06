//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Harichandan Singh on 10/6/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    
    var crayons = [Crayon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for colorDict in crayolaColors {
            if let crayon = Crayon(fromDict: colorDict) {
                crayons.append(crayon)
            }
        }
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let crayonColor: Crayon = crayons[indexPath.row]
        let red = CGFloat(crayonColor.red)
        let green = CGFloat(crayonColor.green)
        let blue = CGFloat(crayonColor.blue)
        cell.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        cell.textLabel?.text = crayonColor.name
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tappedColorCell = sender as? UITableViewCell {
            if segue.identifier == "colorShowSegue" {
                let destinationVC = segue.destination as! CrayonViewController
                let cellIndexPath = self.tableView.indexPath(for: tappedColorCell)!
                let selectedColor: Crayon = crayons[cellIndexPath.row]
                destinationVC.labelContent = selectedColor.name
                
                let crayonColor: Crayon = crayons[cellIndexPath.row]
                let red = CGFloat(crayonColor.red)
                let green = CGFloat(crayonColor.green)
                let blue = CGFloat(crayonColor.blue)
                destinationVC.view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
            }
        }
    }
    
}
