//
//  SignUpController.swift
//  Tutorial_LoginFireBase
//
//  Created by LuisRomero on 9/03/22.
//

import UIKit
import Firebase
import FirebaseAuth
class SignUpController: UIViewController {
    var ref: DatabaseReference!
    
    var defaults = UserDefaults.standard
    
    var signUpView : SignUpView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        
        //view.backgroundColor = .red
            
        setupViews()
    }
    
    func setupViews(){
        let signUpView = SignUpView(frame: self.view.frame)
        self.signUpView = signUpView
        
        self.signUpView.submitAction = submitPressed
        self.signUpView.cancelAction = cancelPressed
        
        view.addSubview(signUpView)
        
        
    }
    
    func submitPressed(){
        guard let email = signUpView.emailtextField.text else { return }
        guard let password = signUpView.passwordtextField.text else { return }
        guard let name = signUpView.nametextField.text else { return }
        
        let userData: [String:Any] = [
            "name" : name
            
        ]
        
        Auth.auth().createUser(withEmail: email, password: password){ (result, err) in
            if let err = err {
                print(err.localizedDescription)
            }else{
                guard let uid = result?.user.uid else { return }
                self.ref.child("users/\(uid)").setValue(userData)
                self.defaults.set(false, forKey: "UserIsLoggedIn")
                print("Successfully created a user: ", uid)
                self.dismiss(animated: true, completion: nil)
            }
            
        }
        
    }
    
    func cancelPressed(){
        dismiss(animated: true, completion: nil)
    }
    
    
}
