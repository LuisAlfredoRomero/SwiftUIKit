//
//  ViewController.swift
//  loginFirebase_1
//
//  Created by LuisRomero on 16/02/22.
//

import UIKit
import AVKit
import FirebaseCore
import FirebaseAnalytics

class ViewController: UIViewController {
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Analytics.logEvent("InitScreen", parameters: ["message":"Integracion de Firebase completa"])
        
        setUpElements()
        
        
    }
    
       
        
    func setUpElements(){
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
    }
    
    


}

