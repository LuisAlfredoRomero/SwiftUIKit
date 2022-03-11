//
//  ViewController.swift
//  autoLayout_5
//
//  Created by LuisRomero on 7/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var foto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foto.layer.cornerRadius = foto.bounds.size.height / 2.0
        
        foto.clipsToBounds = true
    }


}

