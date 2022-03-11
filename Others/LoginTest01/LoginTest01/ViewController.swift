//
//  ViewController.swift
//  LoginTest01
//
//  Created by Luis Alfredo Romero Rivas on 9/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtUsername: UITextField!
        
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Connection(sender: Any) {
        if(txtUsername.text=="" || txtPassword.text==""){
            lbl.text = "Email and Password is required..."
        }else{
            let parameters: UIPreviewParameters=["request":"email":txtUsername.text!,"password":txtPassword.text!]
            
            
        }
        
        
        
    }
    

}

