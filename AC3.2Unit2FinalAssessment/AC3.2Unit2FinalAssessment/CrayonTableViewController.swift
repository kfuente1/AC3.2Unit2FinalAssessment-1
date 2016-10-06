//
//  CrayonTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Marcel Chaucer on 10/6/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import UIKit

class CrayonTableViewController: UITableViewController {
var crayons = [Crayon]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Colors", for: indexPath)
        let label = cell.viewWithTag(1)
        
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
            
        }
        return cell
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}

