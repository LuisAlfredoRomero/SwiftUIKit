//
//  loginViewController.swift
//  FirstProject
//
//  Created by LuisRomero on 7/03/22.
//

import UIKit
import FirebaseAuth

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(loginImageView)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(goButton)
        view.addSubview(errorLabel)
        
        
        
        backBarButton()
        setupLayout()
        
        
        
    }
    
    let loginImageView: UIView = {
        let newImage = UIImage(named: "key.png")
        let myImageView:UIImageView = UIImageView()
        myImageView.image = newImage
        myImageView.contentMode = .scaleAspectFit
        
        return myImageView
    }()
    
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 34, weight:UIFont.Weight.thin)
        label.textColor = .black
        label.text = "Login"
        label.textAlignment = .center
        return label
    }()
    
    let usernameTextField: UITextField = {
        let textField = UITextField()
    
        textField.textAlignment = .left
        textField.borderStyle = .roundedRect
        textField.placeholder = "Username"

        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
    
        textField.textAlignment = .left
        textField.borderStyle = .roundedRect
        textField.placeholder = "Password"

        return textField
    }()
    
    let goButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
    
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        
        //button.addTarget(self, action: #selector(loginNewViewController), for: .touchUpInside)
        
        //button.frame = CGRect(x: 100, y: 600, width: 200, height: 52)

        return button
    }()
    
    let errorLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 34, weight:UIFont.Weight.thin)
        label.textColor = .red
        label.text = "Error"
        label.textAlignment = .center
        label.alpha = 1
        return label
    }()
    
    
    func setupLayout(){
        //container
        let topImageContainerView = UIView()
        //topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        //login image
        loginImageView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.addSubview(loginImageView)
        
        loginImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        loginImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        loginImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        
        //label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant: 0).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        //titleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:0).isActive = true
        
        //textField Username
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5).isActive = true
        usernameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        usernameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        usernameTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06).isActive = true
        //usernameTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:0).isActive = true
        
        //textField Password
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 5).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06).isActive = true
        //usernameTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:0).isActive = true
        
        //button Login
        goButton.translatesAutoresizingMaskIntoConstraints = false
        goButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        goButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        goButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        //loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        
        //label error
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        errorLabel.topAnchor.constraint(equalTo: goButton.bottomAnchor, constant: 0).isActive = true
        errorLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        errorLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        //titleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:0).isActive = true
        
        
    }
    
    
    func backBarButton(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title:"Back" ,
            style: .plain,
            target: self,
            action: #selector(backBarButtonSelector))
    }
    
    
    
    //MARK: Selectors
    @objc private func backBarButtonSelector(){
        dismiss(animated: true, completion: nil)
    }
    
    @objc private func buttonGo(){
        let username = usernameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: username, password: password){
            (result, error) in
            if error != nil{
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            }else{
                //let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
                
                let homeViewController = instantiateInitialViewController(HomeViewController)

                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
        
        
        
    }
    
    
    @objc func going(){
        let rootVC = HomeViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        
        present(navVC, animated: true)
    }

}
