//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Erica Y Stevens on 10/6/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {

//2 tasks left to complete: Segue from colors to detail view & use input to adjust slider
    var crayons: [Crayon] = []
    
    let cellIdentifier = "crayonCell"
    let crayonSegueIdentifier = "showColorSegue"

    override func viewDidLoad() {
        super.viewDidLoad()

        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
        //print(crayons["name"])
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        
        //https://code.tutsplus.com/tutorials/ios-from-scratch-with-swift-table-view-basics--cms-25160
        let color = crayons[indexPath.row]
    
         //Configure the cell...
        cell.textLabel?.text = color.name
        cell.backgroundColor = UIColor(colorLiteralRed: Float(color.red), green: Float(color.green), blue: Float(color.blue), alpha: 1)

        return cell
    }
 


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //https://www.codebeaulieu.com/29/prepareForSegue
        if segue.identifier == crayonSegueIdentifier {
            if let destination = segue.destination as? CrayonViewController {
                let path = tableView.indexPathForSelectedRow
                let cell = tableView.cellForRow(at: path!)
                destination.viaSegue = (cell?.textLabel?.text!)!
            }
        }
    }
    
    //https://www.codebeaulieu.com/29/prepareForSegue
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        _ = tableView.indexPathForSelectedRow!
        if let _ = tableView.cellForRow(at: indexPath as IndexPath) {
            self.performSegue(withIdentifier: crayonSegueIdentifier, sender: self)
        }
        
    }
    

}
