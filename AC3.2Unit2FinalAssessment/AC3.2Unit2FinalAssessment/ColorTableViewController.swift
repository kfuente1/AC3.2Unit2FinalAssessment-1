//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Annie Tung on 10/6/16.
//  Copyright © 2016 Annie Tung. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    
    internal var crayonData: [Crayon]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var crayons: [Crayon] = []
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
            crayonData = crayons
    }
}

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayolaColors.count
    }
    
//    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        guard let colors = crayolaColors.colors else { return }
//        performSegue(performSegue(withIdentifier: "CrayonNameSegue", sender: <#T##Any?#>)
//    }
//    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let colorViewController = segue.destination as? CrayonViewController { //will transition to the other segue view controller
            if segue.identifier == "CrayonNameSegue" {
                let indexPath = tableView.indexPathForSelectedRow
                colorViewController.color = String(describing: crayonData)
            }
        }
    }
}
