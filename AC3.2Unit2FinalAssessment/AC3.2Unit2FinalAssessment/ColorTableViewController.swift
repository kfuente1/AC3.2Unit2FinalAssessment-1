//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Eashir Arafat on 10/6/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    
    var crayons: [Crayon] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // crayolaColors is a global variable defined in CrayonData.swift
        // so it should be visible from any point in your code
        
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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return crayons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = crayons[indexPath.row].name
        cell.backgroundColor = UIColor(red: CGFloat(crayons[indexPath.row].red), green: CGFloat(crayons[indexPath.row].green) , blue: CGFloat(crayons[indexPath.row].blue), alpha: 1.0)
            
        
        
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let cvc = segue.destination as? CrayonViewController {
            for eachCrayon in crayons {
                cvc.colorNameVar = eachCrayon.name
                cvc.view.backgroundColor = UIColor(red: CGFloat(eachCrayon.red), green: CGFloat(eachCrayon.green), blue: CGFloat(eachCrayon.blue), alpha: 1.0)
                
            }
        }
           
        

    }
 

}
