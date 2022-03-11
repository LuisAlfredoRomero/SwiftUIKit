//
//  LoginView.swift
//  Tutorial_LoginFireBase
//
//  Created by LuisRomero on 8/03/22.
//

import UIKit

class LoginView: UIView {
    
    var loginAction:(() ->Void)?
    var signupAction:(() ->Void)?

    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setup()
    }
    
    func setup(){
        let stackView = createStackView(views: [emailTextField, passwordTextField, loginButton, signupButton])
        
        addSubview(backgroundImageView)
        addSubview(stackView)
        addSubview(logoImageView)
        
        
        
        logoImageView.setAnchor(top: self.safeAreaLayoutGuide.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 50, paddingBottom: 0, paddingRight: 50, width: 200, height: 200)
        logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
       
        
        
        
        
        backgroundImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        stackView.setAnchor(top: logoImageView.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 200, height: 200)
        
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
    }
    
    //MARK: Properties
    let backgroundImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "w1.jpeg")
        iv.contentMode = .scaleAspectFill
        iv.alpha = 1
        return iv
    
    }()
    
    let logoImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "apple")
        iv.contentMode = .scaleAspectFill
        iv.alpha = 1
        return iv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 34, weight:UIFont.Weight.thin)
        label.textColor = .black
        label.text = "MyBestIdeaApp"
        label.textAlignment = .center
        return label
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
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    
}
