//
//  ViewController.swift
//  to-do-list
//
//  Created by LuisRomero on 28/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    var task = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
    }
    
    
}
