//
//  ColorsTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Jermaine Kelly on 10/6/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var crayons:[Crayon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
    }
    
    
    
    // MARK: - Utilies
    func getColors(for indexPath:IndexPath)->UIColor{
        let red = Float(crayons[indexPath.row].red)
        let blue = Float(crayons[indexPath.row].blue)
        let green = Float(crayons[indexPath.row].green)
        return UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: 1.0)
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

        // Configure the cell...
        cell.textLabel?.text = crayons[indexPath.row].name
        cell.backgroundColor = getColors(for: indexPath)
        return cell
    }
    
  


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let colorVC = segue.destination as? ColorViewController{
            if let colorIndexPath = tableView.indexPathForSelectedRow{
                if segue.identifier == "showColorView"{
                    colorVC.view.backgroundColor = getColors(for: colorIndexPath)
                    colorVC.colorNameLabel.text = crayons[colorIndexPath.row].name
                }
            }
        }
        
    }


}
