//
//  ViewController.swift
//  FireBaseTutorial
//
//  Created by LuisRomero on 17/01/22.
//

import UIKit
import FirebaseCore
import FirebaseAnalytics
import FirebaseAuth

class AuthViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
        
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Autenticacion"
        
        Analytics.logEvent("InitScreen", parameters: ["menssage":"Integracion de firebase completa"])
        
    }
    
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text{
        
        }
        
    }
    
    @IBAction func logInButton(_ sender: Any) {
        
    }
    
}

