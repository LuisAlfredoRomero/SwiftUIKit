//
//  ViewController.swift
//  CWC_lesson_9
//
//  Created by LuisRomero on 22/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonCalculate(_ sender: Any){
        let leftNumber = Int.random(in: 2...14)
        print(leftNumber)
        let rightNumber = Int.random(in: 2...14)
        print(rightNumber)
        
        leftImageView.image = UIImage(named: "dice\(leftNumber)")
        rightImageView.image = UIImage(named: "dice\(rightNumber)")
        
        
    }

    

}

