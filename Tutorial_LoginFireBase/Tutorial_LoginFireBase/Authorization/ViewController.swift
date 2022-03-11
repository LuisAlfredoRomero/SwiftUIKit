//
//  ViewController.swift
//  Tutorial_LoginFireBase
//
//  Created by LuisRomero on 8/03/22.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    var loginView: LoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true 
    }
    
    
    func setupView(){
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        
        //buttons
        self.loginView.loginAction = loginPressed
        self.loginView.signupAction = signupPressed
        
        //view container
        loginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    func loginPressed(){
        
        guard let email = loginView.emailTextField.text else {
            return
        }
        guard let password = loginView.passwordTextField.text else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password){(user, error) in
            
            if let err = error {
                print(err.localizedDescription)
            }else{
                print("user: \(user?.user.uid) signed in")
                
                self.defaults.set(false, forKey: "UserIsLoggedIn")

                let mainController = UINavigationController(rootViewController: MainController())
                self.present(mainController, animated: true, completion: nil)
            }
            
            
        }
        
        
        
    
    }
    
    
    
    func signupPressed(){
        let signUpController = SignUpController()
        present(signUpController, animated: true, completion: nil)
    }
    
    


}

