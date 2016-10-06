//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Sabrina Ip on 10/6/16.
//  Copyright © 2016 Sabrina Ip. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    
    var crayons = [Crayon]()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Colors"
        
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
        
        print("crayons.count is \(crayons.count)")
        dump(crayons)
        for c in crayons{
            print(c.name)
        }
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorTableViewCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = crayons[indexPath.row].name
        cell.backgroundColor = UIColor(colorLiteralRed: Float(crayons[indexPath.row].red), green: Float(crayons[indexPath.row].green), blue: Float(crayons[indexPath.row].blue), alpha: 1)
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destinationViewController.
            // Pass the selected object to the new view controller.
            if let cvc = sender as? CrayonViewController {
                cvc.name = crayons[indexPath.row].name
                cvc.blue = crayons[indexPath.row].blue
                cvc.red = crayons[indexPath.row].red
                cvc.green = crayons[indexPath.row].green
            }
        }
        
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

    

}
