//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by LuisRomero on 9/12/21.
//

import Foundation

class selfDrivingCar : Car{
    
    var destination : String?
    
     
    override func drive() {
        
        
        super.drive()
        
        if let userSetDestination = destination{
            print("driving towars " + userSetDestination)
        }
        
    }
  
    
    
    
    
}
