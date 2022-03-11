//
//  ViewController.swift
//  Layouts
//
//  Created by LuisRomero on 7/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var orangeView: UIView!
    
    @IBOutlet weak var viewBlue: UIView!
    
    

    var constraintValues = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
        orangeView.translatesAutoresizingMaskIntoConstraints =  false
        
        setAutolayout()
        
        /*
        let widthConstraint = orangeView.widthAnchor.constraint(equalToConstant: 200)
        let heigthConstraint = orangeView.heightAnchor.constraint(equalToConstant: 50)
        
        let centerXConstraint = orangeView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor,constant: 0)
        let centerYConstraint = orangeView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor,constant: 0)
        
        constraintValues.append(contentsOf: [widthConstraint,heigthConstraint,centerXConstraint,centerYConstraint])
        NSLayoutConstraint.activate(constraintValues)
        */
        
        
        
    }
    
    func setAutolayout (){
        
        //leftside
        let leadingConstraint = orangeView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        
        //rightside
        let trailingConstraint = orangeView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        
        //topside
        let topConstraint = orangeView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0)
        
        //bottomside
        let bottomConstraint = orangeView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        
        constraintValues.append(contentsOf: [leadingConstraint,trailingConstraint,topConstraint,bottomConstraint])
        
        //NSLayoutConstraint.activate(constraintValues)
        
        UIView.animate(withDuration: 5.0){
            NSLayoutConstraint.activate(self.constraintValues)
        
            self.view.layoutIfNeeded()
        }
        
        
    }


}

