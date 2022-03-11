//
//  UIStackView+Extension.swift
//  Tutorial_LoginFireBase
//
//  Created by LuisRomero on 9/03/22.
//

import UIKit

extension UIView {
    
    func createStackView(views: [UIView]) -> UIStackView{
       
        let stackView = UIStackView(arrangedSubviews: views)
        
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        
        return stackView
        
        
    }
    
    
}
