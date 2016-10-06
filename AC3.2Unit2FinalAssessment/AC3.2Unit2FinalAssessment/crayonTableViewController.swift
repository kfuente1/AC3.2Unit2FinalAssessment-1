//
//  crayonTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Karen Manzanares Fuentes on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class crayonTableViewController: UITableViewController {
    let cellIdentifier: String = "crayons"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var crayons : [Crayon] = []
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
        

    }
    
    
   
    
    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 16
    }

    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
//        for k in crayolaColors{
//            for l in k.keys {
//                print (l)
//            }
//        }
//        }
//    return cell
//    
//    }
// 




 

  

//    
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: crayonDetailViewController, sender: Any?) {
//        
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
    

}
