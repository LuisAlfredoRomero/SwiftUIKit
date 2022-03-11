//
//  SignUpView.swift
//  SecondProject
//
//  Created by LuisRomero on 10/03/22.
//

import UIKit

class SignUpView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*----------------------------------------------*/

    func setupLayout(){
        let stackView = createStackView(views: [nametextField, emailtextField, passwordtextField, confirmtextField, submitButton, cancelButton])
        
        
        self.addSubview(backgroundImageView)
        self.addSubview(logoImageView)
        self.addSubview(stackView)
        
        backgroundImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        
        logoImageView.setAnchor(top: self.topAnchor, left: nil, bottom: stackView.topAnchor, right: nil, paddingTop: 50, paddingLeft: 100, paddingBottom: 0, paddingRight: 20, width: 300, height: 300)
        logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        stackView.setAnchor(top: logoImageView.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 20)
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        
        
    }
    
    /*----------------------------------------------*/
    
    var submitAction: (() -> Void)?
    var cancelAction: (() -> Void)?
    
    let backgroundImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "w2")
        iv.contentMode = .scaleAspectFill
        iv.alpha = 1
        return iv
    }()
    
    let logoImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "users")
        iv.contentMode = .scaleAspectFill
        iv.alpha = 1
        return iv
    }()
    
    let nametextField: UITextField = {
        let tf = UITextField(placeHolder: "Name")
        return tf
    }()
    
    let emailtextField: UITextField = {
        let tf = UITextField(placeHolder: "Email")
        return tf
    }()
    
    let passwordtextField: UITextField = {
        let tf = UITextField(placeHolder: "Password")
        return tf
    }()
    
    let confirmtextField: UITextField = {
        let tf = UITextField(placeHolder: "Confirm Password")
        return tf
    }()
    
    let submitButton: UIButton = {
        let button = UIButton(title: "Submit")
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(handleSubmit), for: .touchUpInside)
        return button
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton(title: "Cancel")
        button.backgroundColor = .systemRed
        button.addTarget(self, action: #selector(handleCancel), for: .touchUpInside)

        return button
    }()
    
    /*----------------------------------------------*/

    @objc func handleSubmit(){
        submitAction?()
    }
    
    @objc func handleCancel(){
        cancelAction?()
    }
    
    
    
    
    
    
}
