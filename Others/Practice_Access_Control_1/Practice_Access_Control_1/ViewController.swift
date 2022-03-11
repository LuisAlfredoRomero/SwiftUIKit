//
//  ViewController.swift
//  Practice_Access_Control_1
//
//  Created by LuisRomero on 18/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let object =  MathDoer()
        
         let sum = object.perform(x: 1, y: 2)
            print(sum)
        
        
        
    }


}

