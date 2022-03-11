//
//  ViewController.swift
//  LoginMysql
//
//  Created by LuisRomero on 1/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    

    @IBOutlet weak var labelResult: UILabel!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonRegistration(_ sender: Any) {
        
        if (textFieldEmail.text == "" || textFieldPassword.text == ""){
            labelResult.text = "Email and Password is required"
        }
    }
    
    


}

