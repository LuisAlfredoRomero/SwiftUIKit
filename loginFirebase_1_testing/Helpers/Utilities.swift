//
//  Utilities.swift
//  CustomLoginDemo
//
//  Created by LuisRomero on 15/02/22.
//

import Foundation
import UIKit

class Utilities {
    
    static func styleTextField(_ textField: UITextField){
        //create the bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.black.cgColor

        
        
        //remove border on text field
        textField.borderStyle = .none
        
        //add the line to the text field
        textField.layer.addSublayer(bottomLine)
        
    }
    
    static func styleFilledButton(_ button: UIButton){
               
        button.backgroundColor = UIColor.rgbDarkRed
        
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
        
        
        
        
    }
    
    static func styleHollowButton(_ button:UIButton){
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }
    
    static func isPasswordValid(_ password: String)-> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    

}
