//
//  CrayonTableViewController.swift
//  AC3.2 Unit 2 Final Assessment Project
//
//  Created by Edward Anchundia on 10/6/16.
//  Copyright © 2016 Edward Anchundia. All rights reserved.
//

import UIKit

class CrayonTableViewController: UITableViewController {

    internal var crayons: [Crayon] = []
    let cellIdentifier: String = "CrayonTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()


        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
        
        dump(crayons)
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = crayons[indexPath.row].name
        //cell.backgroundColor =
        

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        // 1. check sender for the cell that was tapped
//        if let tappedColorCell: UITableViewCell = sender as? UITableViewCell {
//            
//            // 2. check for the right storyboard segue
//            if segue.identifier == "CrayonViewControllerSegue" {
//                
//                // 3. get reference to the destination view controller
//                let crayonViewController: CrayonViewController = segue.destination as! CrayonViewController
//                
//                // 4. get our cell's indexPath
//                let cellIndexPath: IndexPath = self.tableView.indexPath(for: tappedColorCell)!
//                
//                
//            }
//            
//        }
//    }


}
