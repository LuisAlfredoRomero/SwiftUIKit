//
//  ViewController.swift
//  Pruebas
//
//  Created by Luis Alfredo Romero Rivas on 8/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .link
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        addConstraints()
    }
    
    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))

        NSLayoutConstraint.activate(constraints)
    }


}

