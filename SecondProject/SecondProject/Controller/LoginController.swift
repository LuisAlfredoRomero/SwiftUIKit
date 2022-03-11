//
//  ViewController.swift
//  SecondProject
//
//  Created by LuisRomero on 10/03/22.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayoutView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    /*----------------------------------------------*/
    
    var loginView: LoginView!
    let defaults = UserDefaults.standard
    
    func setupLayoutView(){
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        
        //boton signup
        self.loginView.signupAction = signUpPressed
        
        //boton login
        self.loginView.loginAction = loginPressed
        
        
        
        //container
        loginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
       
        
    }
    
    func signUpPressed(){
        
        let signUpController = SignUpController()
        signUpController.modalPresentationStyle = .fullScreen
        present(signUpController, animated: true, completion: nil)
        
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

                let homeController = UINavigationController(rootViewController: HomeController())
                self.present(homeController, animated: true, completion: nil)
            }
        }
        
    }


}
