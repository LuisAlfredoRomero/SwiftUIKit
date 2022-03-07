//
//  PostService.swift
//  FirebaseToDo_1
//
//  Created by LuisRomero on 1/03/22.
//

import UIKit
import Firebase

struct TodoItem{
    var title: String
    var isComplete: Bool
    //var id: Int
    
    init(keyID: String, dictionary: [String: Any]){
        self.title = dictionary["title"] as? String ?? ""
        self.isComplete = dictionary["isComplete"] as? Bool ?? false
    }
    
}


struct PostService {
    
    static let shared = PostService()
    
    let DB_REF = Database.database().reference()
    
    func fetchAllItems(completion: @escaping([TodoItem]) -> Void) {
        var allItems = [TodoItem]()
        
        DB_REF.child("items").observe(.childAdded){(snapshot) in
             fetchSingleItem(id: snapshot.key) {(item) in
                 allItems.append(item)
                 completion(allItems)
                
            }
        }
    }
    
    func fetchSingleItem(id: String, completion: @escaping(TodoItem) -> Void){
        DB_REF.child("items").child(id).observeSingleEvent(of: .value){
            (snapshot) in
            guard let dictionary = snapshot.value as? [String: Any]
            else {return}
            let todoItem = TodoItem(keyID: id, dictionary: dictionary)
            
            completion(todoItem)
            
        }
    }
    
    func uploadTodoItem(text: String, completion: @escaping(Error?, DatabaseReference) -> Void) {
        let values = ["Title": text, "isComplete": false] as [String: Any]
        
        
        DB_REF.child("items").childByAutoId().updateChildValues(values, withCompletionBlock: completion)
    }
    
    
}
