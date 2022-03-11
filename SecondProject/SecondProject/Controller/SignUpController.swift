//
//  SignUpController.swift
//  SecondProject
//
//  Created by LuisRomero on 10/03/22.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()//calling the db
        
        
        //view.backgroundColor = .systemRed
        
        setupViews()
    }
    
    /*----------------------------------------------*/
    
    var ref: DatabaseReference! //db from firebase reference
    
    var defaults = UserDefaults.standard //
    
    var signUpView: SignUpView!
    
    
    func setupViews(){
        let signUpView = SignUpView(frame: self.view.frame)
        self.signUpView = signUpView
        
        self.signUpView.submitAction = submitPressed
        self.signUpView.cancelAction = cancelPressed
        
        view.addSubview(signUpView)
        
//        signUpView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
    }
    
    func submitPressed(){
        guard let email = signUpView.emailtextField.text else { return }
        guard let password = signUpView.passwordtextField.text else { return }
        guard let name = signUpView.nametextField.text else { return }
        
        //creating the table to store the data
        let userData: [String:Any] = [
            "name" : name
            
        ]
        
        Auth.auth().createUser(withEmail: email, password: password){ (result, err) in
            if let err = err {
                print(err.localizedDescription)
            }else{
                guard let uid = result?.user.uid else { return }//asking for uid
                self.ref.child("users/\(uid)").setValue(userData)
                self.defaults.set(false, forKey: "UserIsLoggedIn")
                
                               
                print("Successfully created a user: ", uid)
                
                
//                let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
//
//                           // Code in this block will trigger when OK button tapped.
//                           print("Ok button tapped");
//
//                       }
                
                self.dismiss(animated: true, completion: nil)
            }
            
        }
        
        
        
        
    }
    
    
    func cancelPressed(){
        dismiss(animated: true, completion: nil)
    }
    
    
}
