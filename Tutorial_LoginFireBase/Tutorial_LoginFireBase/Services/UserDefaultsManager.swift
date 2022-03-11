//
//  UserDefaultsManager.swift
//  Tutorial_LoginFireBase
//
//  Created by LuisRomero on 9/03/22.
//

import Foundation

struct Constants {
    
    struct Authentication {
        static let userIsLoggedIn = "UserIsLoggedIn"
    }
    
    private init(){
        
    }
    
}

class UserDefaultManager {
    static let shared = UserDefaultManager()
    
    private init(){
        
    }
    
    var userIsLoggedIn: Bool {
        get{
            return UserDefaults.standard.bool(forKey: Constants.Authentication.userIsLoggedIn)
        }
        set{
            return UserDefaults.standard.set(newValue, forKey: Constants.Authentication.userIsLoggedIn)
        }
    }
    
}
