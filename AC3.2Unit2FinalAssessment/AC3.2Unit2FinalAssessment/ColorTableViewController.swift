//
//  myTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tom Seymour on 10/6/16.
//  Copyright © 2016 C4Q-3.2. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    
    var crayons: [Crayon] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "thisColorCell", for: indexPath) as! ColorDetailTableViewCell
        let thisCray = crayons[indexPath.row]
        
        cell.textLabel?.text = thisCray.name
        cell.backgroundColor = UIColor(red: CGFloat(thisCray.red), green: CGFloat(thisCray.green), blue: CGFloat(thisCray.blue), alpha: 1.0)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCray = crayons[indexPath.row]
        performSegue(withIdentifier: "CrayonDetailSegue", sender: selectedCray)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CrayonDetailSegue" {
            let destinationController = segue.destination as! ColorDetailViewController
            let thisColor = sender as! Crayon
            destinationController.thisCrayDetail = thisColor
        }
    }
    
}
