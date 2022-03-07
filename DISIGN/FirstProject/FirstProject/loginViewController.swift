//
//  loginViewController.swift
//  FirstProject
//
//  Created by LuisRomero on 7/03/22.
//

import UIKit

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        view.addSubview(titleLabel)
        backBarButton()
        
        
        
    }
    
    let loginimageView: UIView = {
    let newImage = UIImage(named: "idea.png")
        let myImageView:UIImageView = UIImageView()
        myImageView.image = newImage
        myImageView.contentMode = .scaleAspectFit
        
        return myImageView
    }()
    
    
    let titleLabel: UILabel = {
    let label = UILabel()
    label.font = .boldSystemFont(ofSize: 28)
    label.textColor = .white
    label.text = "Create a new todo item"
    label.textAlignment = .center
    return label
    }()
    
    func setupLayout(){
        //container
        
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        
        
        
        
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

}
