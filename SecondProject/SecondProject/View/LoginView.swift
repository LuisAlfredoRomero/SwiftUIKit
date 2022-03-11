//
//  LoginView.swift
//  SecondProject
//
//  Created by LuisRomero on 10/03/22.
//

import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout(){
        let stackView = createStackView(views: [emailTextField, passwordTextField, loginButton, signupButton])
        
        
        addSubview(backgroundImageView)
        addSubview(logoImageView)
        
        addSubview(stackView)
//        
//        //logo
//       logoImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 100, paddingLeft: 20, paddingBottom: 600, paddingRight: 20)
       
 
        //backgroud image
        backgroundImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        //stackview
        stackView.setAnchor(width: self.frame.width - 60, height: 210)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor,constant: 200).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        
    }
    
    //variables
    
    var loginAction:(() ->Void)?
    
    var signupAction:(() ->Void)?
    
    
    let backgroundImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "a1.jpeg")
        iv.contentMode = .scaleAspectFill
        iv.alpha = 1
        return iv
    }()
    
    let logoImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "idea.png")
        iv.contentMode = .scaleAspectFill
        iv.alpha = 1
        return iv
    }()
    
    
    let emailTextField: UITextField = {
       let tf = UITextField(placeHolder: "Email")
       return tf
    }()
    
    let passwordTextField: UITextField = {
       let tf = UITextField(placeHolder: "Password")
       return tf
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(title: "Login", borderColor: UIColor.greenBorderColor)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    let signupButton: UIButton = {
        let button = UIButton(title: "SignUp", borderColor: UIColor.redBorderColor)
        button.addTarget(self, action: #selector(handleSignup), for: .touchUpInside)
        return button
    }()
    
    
    @objc func handleLogin(){
        loginAction?()
        
    }
    
    @objc func handleSignup(){
        signupAction?()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
