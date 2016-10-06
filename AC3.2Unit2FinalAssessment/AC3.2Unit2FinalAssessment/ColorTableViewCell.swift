//
//  ColorTableViewCell.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Victor Zhong on 10/6/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {

	@IBOutlet weak var colorLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
