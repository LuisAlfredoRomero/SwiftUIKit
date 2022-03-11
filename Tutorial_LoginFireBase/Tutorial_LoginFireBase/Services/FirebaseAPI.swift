//
//  FirebaseAPI.swift
//  Tutorial_LoginFireBase
//
//  Created by LuisRomero on 9/03/22.
//

import Foundation
import Firebase

struct FirebaseAPI {
    
    static let shared = FirebaseAPI()
    
    private init(){
        
        
    }
    
    private let ref = Database.database().reference()
    
    var UserID: String? {
        get {
            return Auth.auth().currentUser?.uid
            
        }
    }
    
   
}
