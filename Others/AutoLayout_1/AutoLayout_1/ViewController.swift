//
//  ViewController.swift
//  AutoLayout_1
//
//  Created by LuisRomero on 17/02/22.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var logoImageView: UIImageView!

    @IBOutlet weak var loginDataView: UIView!
    @IBOutlet weak var loginDataLineView: UIView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var initSessionButton: UIButton!
    @IBOutlet weak var forgotenPasswordButton: UIButton!
    
    @IBOutlet weak var bottomLineView: UIView!
    
    //
    private let primaryColor = UIColor(red: 56/255, green: 117/255, blue: 233/255, alpha: 1)
    //
    private let secondaryColor = UIColor(red: 173/255, green: 202/255, blue: 250/255, alpha: 1)
    //color gris
    private let tertiaryColor = UIColor(red: 254/255, green: 254/255, blue: 254/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //logo redondo
        logoImageView.layer.cornerRadius = logoImageView.bounds.height / 2
        logoImageView.clipsToBounds = true
        
        loginDataView.layer.borderColor = tertiaryColor.cgColor
        logoImageView.layer.borderWidth = 1
        logoImageView.layer.cornerRadius = 3
        logoImageView.clipsToBounds = true
        
        initSessionButton.backgroundColor = primaryColor
        initSessionButton.setTitleColor(secondaryColor, for: .normal)
        initSessionButton.clipsToBounds = true
        
        
        
        
        
    }
    
    
}

