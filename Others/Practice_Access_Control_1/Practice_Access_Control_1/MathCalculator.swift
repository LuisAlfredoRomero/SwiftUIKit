//
//  MathCalculator.swift
//  Practice_Access_Control_1
//
//  Created by LuisRomero on 18/02/22.
//

import Foundation

class MathDoer{

    public func perform(x: Int, y: Int )-> Int{
        
        
        return add(x: x, y: y)
    }
    
    private func add(x: Int, y: Int)-> Int{
        return x + y
        
    }
    
}


