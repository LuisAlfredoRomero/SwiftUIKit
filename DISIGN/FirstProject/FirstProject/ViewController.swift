//
//  ViewController.swift
//  Project_1
//
//  Created by LuisRomero on 3/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(ideaImageView)
        view.addSubview(titleTextView)
        view.addSubview(loginButton)
        view.addSubview(signinButton)
        
        setupLayout()
        
    }
    
    //MARK: Properties
    let ideaImageView: UIImageView = {
        let ideaImage = UIImage(named: "idea.png")
        let myImageView:UIImageView = UIImageView()
        myImageView.image = ideaImage
        myImageView.contentMode = .scaleAspectFit
        
        return myImageView
    }()
    
    let titleTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Wellcome to MyBestIdeaAPP!", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 34, weight: UIFont.Weight.thin)])
        textView.attributedText = attributedText
        textView.textAlignment = .center

        return textView
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
    
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        
        button.addTarget(self, action: #selector(loginNewViewController), for: .touchUpInside)
        
        //button.frame = CGRect(x: 100, y: 600, width: 200, height: 52)

        return button
    }()
    
    let signinButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sigin", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.backgroundColor = .systemMint
        button.setTitleColor(.white, for: .normal)
        
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        return button
    }()
    
    //MARK: Selectors
    @objc func loginNewViewController(){
        let rootVC = loginViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }
    
    
    //MARK: Layouts
    private func setupLayout(){
        //containerView
        let topImageContainerView = UIView()
        //topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        //imageLogo
        ideaImageView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.addSubview(ideaImageView)
        ideaImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        ideaImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        ideaImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        //titleText
        titleTextView.translatesAutoresizingMaskIntoConstraints = false
        titleTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        titleTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true

        //button Login
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: titleTextView.bottomAnchor).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        //loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        
        //button sigin
        signinButton.translatesAutoresizingMaskIntoConstraints = false
        signinButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10).isActive = true
        signinButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        signinButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        //signinButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        

        
        
        
        
    }
    
    
    
}





