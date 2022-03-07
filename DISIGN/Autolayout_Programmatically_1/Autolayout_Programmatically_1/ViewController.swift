//
//  ViewController.swift
//  Autolayout_Programmatically_1
//
//  Created by LuisRomero on 3/03/22.
//

import UIKit

class ViewController: UIViewController {

    //let's avoid pulluting the viewDidLoad
    let ideaImageView: UIImageView = {
        //pulling the image.png and saving to a variable called ideaImage
        let ideaImage = UIImage(named: "idea.png")
        //creating a variable myImageView to transform the ideaImage to UIImageView
        let myImageView:UIImageView = UIImageView()
        myImageView.image = ideaImage
        
        //calling a protocol that gives us permission to set constraints for our image
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myImageView.contentMode = .scaleAspectFit

        return myImageView
    }()
    
    let titleTextView: UITextView = {
       let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\n\nHello Allegro, you are going well keep the way you are!!!!", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13)]))
        textView.attributedText = attributedText


        textView.translatesAutoresizingMaskIntoConstraints = false

        
        
        textView.textAlignment = .center

        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
        view.addSubview(titleTextView)
        
    
        
        setupLayout()
     
    }
    
    
    private func setupLayout(){
        
        let topImageContainerView = UIView()
        topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
    
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        //backgroud blue
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        //to come front an image
        topImageContainerView.addSubview(ideaImageView)
        ideaImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        
        ideaImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        
        ideaImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        
        
                
        //title textView
        titleTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant: 10).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        titleTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }


}

