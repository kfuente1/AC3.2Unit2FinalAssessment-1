//
//  TableViewCell.swift
//  assessment
//
//  Created by Thinley Dorjee on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    func setData(crayon: Crayon){
        self.cellLabel.text = crayon.name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
