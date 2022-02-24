//
//  ViewController.swift
//  AutoLayOut_Constraints_Coding_1
//
//  Created by LuisRomero on 24/02/22.
//

import UIKit

class ViewController: UIViewController {
    private let firstView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .link
        return myView
    }()
    
    private let secondView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .systemRed
        return myView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(firstView)
        view.addSubview(secondView)
        addConstraints()
    }
    
    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        //add
        constraints.append(firstView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(firstView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(firstView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(firstView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
       
        constraints.append(secondView.widthAnchor.constraint(equalTo: firstView.widthAnchor, multiplier: 0.5))
        constraints.append(secondView.heightAnchor.constraint(equalTo: firstView.heightAnchor, multiplier: 0.5))
        constraints.append(secondView.centerYAnchor.constraint(equalTo: firstView.centerYAnchor))
        constraints.append(secondView.centerXAnchor.constraint(equalTo: firstView.centerXAnchor))
        
        
        /*
        //other way to put a constraint
        constraints.append(secondView.leadingAnchor.constraint(
            equalTo: firstView.safeAreaLayoutGuide.leadingAnchor, constant: 120 ))
        constraints.append(secondView.trailingAnchor.constraint(
            equalTo: firstView.safeAreaLayoutGuide.trailingAnchor, constant: -120))
        constraints.append(secondView.bottomAnchor.constraint(
            equalTo: firstView.safeAreaLayoutGuide.bottomAnchor, constant: -100))
        constraints.append(secondView.topAnchor.constraint(
            equalTo: firstView.safeAreaLayoutGuide.topAnchor, constant: 100))
         */
          
          
          
          
          
          
          
        //activate
        NSLayoutConstraint.activate(constraints)

    }
    
    
    


}

