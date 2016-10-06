//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Ilmira Estil on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    var crayons = [Crayon]()
    let cellIdentifier = "CrayonCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.tableView.rowHeight = UITableViewAutomaticDimension
//        self.tableView.estimatedRowHeight = 200.0
        // crayolaColors is a global variable defined in CrayonData.swift
        // so it should be visible from any point in your code
        
        
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
        return self.crayons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        //guard let crayon =
        
        
        /*
 guard let genre = Genre.init(rawValue: indexPath.section),
 let data = byGenre(genre) else {
 return cell
 }*/
        
        // Configure the cell...
        cell.backgroundColor = UIColor(red: CGFloat(crayons[0].red), green: CGFloat(crayons[0].green), blue: CGFloat(crayons[0].blue), alpha: 1.0)
        
        //cell.backgroundColor = UIColor.blue
        return cell
    }
    
    /*
    ovveride func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    */

    
    // MARK: - Navigation

  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             if let gvc = segue.destination as? CrayonViewController {
                gvc.crayonBackgroundColor = UIColor(red: CGFloat(crayons[0].red), green: CGFloat(crayons[0].green), blue: CGFloat(crayons[0].blue), alpha: 1.0)
        }
    

    }
}
