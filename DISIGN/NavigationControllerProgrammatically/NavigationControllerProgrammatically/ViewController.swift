//
//  ViewController.swift
//  NavigationControllerProgrammatically
//
//  Created by LuisRomero on 3/03/22.
//

import UIKit

class ViewController: UIViewController {
  
    let button = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor  = .systemBlue
        
        button.setTitle("Go to Nav Controller", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    
    /*1. this create UINavigationController that pull from the SeconViewController */
    
    @objc private func didTapButton(){
        let rootVC = SecondViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        
        present(navVC, animated: true)
    }
    
    

}

class SecondViewController: UIViewController{
   
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        title = "Welcome Allegro"
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title:"Dismiss" ,
            style: .plain,
            target: self,
            action: #selector(dismissSelf))
        
        
        button.setTitle("Push another Controller", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
        
        
    }
    
    @objc private func didTapButton(){
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }

    
    
}
