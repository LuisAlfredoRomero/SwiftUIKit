//
//  MarketItem.swift
//  Firebase_Login_2
//
//  Created by LuisRomero on 2/03/22.
//

import Firebase

struct MarketItem {
    
    let ref: DatabaseReference?
    let key: String
    let name: String
    let addedByUser: String
    var completed: Bool
    
    //MARK: initilialize with raw data
    init(name: String, addedByUser: String, completed: Bool, key: String = ""){
        self.ref = nil
        self.key = key
        self.name = name
        self.addedByUser = addedByUser
        self.completed = completed
    }
    
    //MARK: Initialize with Firebase
    init?(snapshot: DataSnapshot) {
        guard
            let value = snapshot.value as? [String: AnyObject],
            let name = value["name"] as? String,
            let addedByuser = value["addedByUser"] as? String,
            let completed = value["completed"] as? Bool
        else {
            return nil
        }
        
        self.ref = snapshot.ref
        /**/self.key = snapshot.key
        self.name = name
        self.addedByUser = addedByuser
        self.completed = completed
    }
    //MARK: convert to anyobject
    func toAnyObject() -> Any {
        return [
            "name": name,
            "addedByUser": addedByUser,
            "completed": completed
        ]
    }
    
    
    
    
    
    
    
    
}
