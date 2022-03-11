//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Luis Alfredo Romero Rivas on 11/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var IBOutlet: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func askButtonPressed(_ sender: Any) {
    newBallImage()
    }
    
    
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(4))
        
        IBOutlet.image = UIImage(named: ballArray[randomBallNumber])


    }
    
}

