//
//  Crayon.swift
//  Unit2FinalAssessment
//
//  Created by C4Q on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

class Crayon {
    var name: String
    var red: Double
    var green: Double
    var blue: Double
    
    init(name: String, red: Double, green: Double, blue: Double) {
        self.name = name
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    convenience init?(fromDict:[String:Any]) {
        if let name = fromDict["name"] as? String,
            let hex = fromDict["hex"] as? String {
            
            var hexComponents = [String]()
            
            // index(after:) will have us skip the initial hash character
            var start = hex.index(after: hex.startIndex)
            
            // go over the characters 3x (there are 6 total)
            for _ in 0..<3 {
                // pick off the first two by making this range
                let range = start..<hex.index(start, offsetBy: 2)
                
                // then substring copies out that range
                let hexComponent = hex.substring(with: range)
                
                // put the string in the array
                hexComponents.append(hexComponent)
                
                // move our start point past the copied characters
                start = hex.index(start, offsetBy: 2)
            }
            
            if let r = Double("0x"+hexComponents[0]), let g = Double("0x"+hexComponents[1]), let b = Double("0x"+hexComponents[2]) {
                self.init(name: name, red: r/255.0, green: g/255.0, blue: b/255.0)
            }
            else {
                return nil
            }
        }
        else {
            return nil
        }
    }
    
    convenience init?(fromRuthBaderGinsburg:[String:Any]) {
        if let name = fromRuthBaderGinsburg["name"] as? String,
            let rbg = fromRuthBaderGinsburg["rgb"] as? String {
            
            var numbers = [Double]()
            
            let numbersAsStrings = rbg.components(separatedBy: CharacterSet.whitespacesAndNewlines.union(.punctuationCharacters))
            
            for number in numbersAsStrings {
                if let n = Double(number) {
                    numbers.append(n)
                }
            }
            self.init(name: name, red: numbers[0]/255.0, green: numbers[1]/255.0, blue: numbers[2]/255.0)
            
            
        } else {return nil}
    }
}
