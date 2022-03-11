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
    
    /*----------------------------------------------*/

    func setupLayout(){
        let stackView = createStackView(views: [emailTextField, passwordTextField, loginButton, signupButton])
        
        
        addSubview(backgroundImageView)
        addSubview(logoImageView)
        addSubview(titleLabel)
        
        
        addSubview(stackView)

 
        //backgroud image
        backgroundImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        //logo image
        logoImageView.setAnchor(top: self.safeAreaLayoutGuide.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
              
        //label title
        titleLabel.setAnchor(top: logoImageView.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 10, paddingLeft: 20, paddingBottom: 0, paddingRight: 20)
        
        //stack view
        
        stackView.setAnchor(top: titleLabel.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 40, paddingLeft: 40, paddingBottom: 0, paddingRight: 40)
        
    }
    
    /*----------------------------------------------*/

    var loginAction:(() ->Void)?
    
    var signupAction:(() ->Void)?
    
    
    let backgroundImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "a1.jpeg")
        iv.contentMode = .scaleAspectFill
        iv.alpha = 0.7
        return iv
    }()
    
    let logoImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "idea.png")
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
        let button = UIButton(title: "Login")
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        button.backgroundColor = .systemBlue
        return button
    }()
    
    let signupButton: UIButton = {
        let button = UIButton(title: "SignUp")
        button.addTarget(self, action: #selector(handleSignup), for: .touchUpInside)
        button.backgroundColor = UIColor(r: 139, g: 0, b: 0)
        return button
    }()
    
    /*----------------------------------------------*/

    @objc func handleLogin(){
        loginAction?()
        
    }
    
    @objc func handleSignup(){
        signupAction?()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
