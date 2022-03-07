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
        
        setupLayout()
        
    }
    
    //MARK: Properties
    let ideaImageView: UIImageView = {
        let ideaImage = UIImage(named: "idea.png")
        let myImageView:UIImageView = UIImageView()
        myImageView.image = ideaImage
        
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myImageView.contentMode = .scaleAspectFit
        
        return myImageView
    }()
    
    
    
    
    //MARK: Layouts
    private func setupLayout(){
        //containerView
        let topImageContainerView = UIView()
        topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        //imageLogo
        topImageContainerView.addSubview(ideaImageView)
        ideaImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        ideaImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        ideaImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true

        
        
        
        
    }
    
    
    
}

