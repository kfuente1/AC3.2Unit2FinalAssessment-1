//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tong Lin on 10/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {

    internal var crayons: [Crayon]?
    internal var crayonData: [[String : Any]] = crayolaColors
    let cellIdentifier: String = "CrayonTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Crayon Colors"
        
        var crayonContainer: [Crayon] = []
        for c in crayonData {
            if let crayon = Crayon(fromDict: c) {
                crayonContainer.append(crayon)
            }
        }
        crayons = crayonContainer
        for i in crayons!{
            print(i.name)
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
        guard let data = crayons else {
            print("flag: define number of rows")
            return 0
        }

        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        guard let data = crayons else {
                return cell
        }
        
        // Configure the cell...
        
        cell.textLabel?.text = data[indexPath.row].name
        if data[indexPath.row].name == "Black"{
            cell.textLabel?.textColor = UIColor.white
        }
        cell.backgroundColor = UIColor(red: CGFloat(data[indexPath.row].red), green: CGFloat(data[indexPath.row].green), blue: CGFloat(data[indexPath.row].blue), alpha: 1.0)
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tappedMovieCell: UITableViewCell = sender as? UITableViewCell {
            if segue.identifier == "ColorDetailViewSegue"{
                let detailViewC: DetailViewController = segue.destination as! DetailViewController
                
                let cellIndexPath: IndexPath = self.tableView.indexPath(for: tappedMovieCell)!
            
                guard let data = crayons else {
                    return
                }
                let crayon: Crayon = data[cellIndexPath.row]
                detailViewC.crayon = crayon
            }
        }
    }

}
