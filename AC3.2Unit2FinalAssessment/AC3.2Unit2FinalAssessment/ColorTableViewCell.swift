//
//  ColorTableViewCell.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Madushani Lekam Wasam Liyanage on 10/6/16.
//  Copyright © 2016 Madushani Lekam Wasam Liyanage. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {
   
    @IBOutlet weak var colorNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
    
    }
//    func setData(student: Student) {
//        let studentInfo = student.info
//        self.profileImageView.image = UIImage(named: studentInfo.imageName)
//        self.nameLabel.text = studentInfo.firstName + " " + studentInfo.lastName
//        self.emailLabel.text = studentInfo.email
//    }
    
    func setData(color: Crayon) {
        let colorName = color.name
        let colorR = color.red
        let colorG = color.green
        let colorB = color.blue
        //colorNameLabel.text = colorName
        let tableInfo = Crayon.init(name: colorName, red: colorR, green: colorG, blue: colorB)
        
        colorNameLabel.text = tableInfo.name
        self.backgroundColor = UIColor(red: CGFloat(tableInfo.red), green: CGFloat(tableInfo.green), blue: CGFloat(tableInfo.blue), alpha: 1.0)
        
        
    }

}
