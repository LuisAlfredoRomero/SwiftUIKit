//
//  ViewController.swift
//  Firebase_Login_2
//
//  Created by LuisRomero on 2/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: Constants
    let loginToList = "LoginToList"
    
    
    //MARK: Outlets
    @IBOutlet weak var enterEmail: UITextField?
    @IBOutlet weak var enterPassword: UITextField?
    
    
    
    //MARK: Properties
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        enterEmail?.delegate = self
        enterPassword?.delegate = self
        
        
    }
    
    //MARK: Actions
    
    @IBAction func loginDidTouch(_ sender: AnyObject) {
      performSegue(withIdentifier: loginToList, sender: nil)
    }

    @IBAction func signUpDidTouch(_ sender: AnyObject) {
      performSegue(withIdentifier: loginToList, sender: nil)
    }
    
    
    



}

//MARK: Extensions

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == enterEmail {
            enterPassword?.becomeFirstResponder()
        }
        
        if textField == enterPassword{
            textField.resignFirstResponder()
        }
        
        return true
    }
}
