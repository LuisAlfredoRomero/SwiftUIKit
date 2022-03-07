//
//  MarketListTableViewController.swift
//  Firebase_Login_2
//
//  Created by LuisRomero on 2/03/22.
//

import UIKit
import Firebase

class MarketListTableViewController: UITableViewController {
    
    //Constants
    let listToUsers = "ListToUsers"
    
    //Properties
    var items: [MarketItem] = []
    var user: User?
    var onlineUserCount = UIBarButtonItem()
    
    
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.allowsMultipleSelectionDuringEditing = false
        
        onlineUserCount = UIBarButtonItem(
            title: "1",
            style: .plain,
            target: self,
            action: #selector(onlineUserCountDidTouch))
            onlineUserCount.tintColor = .white
            navigationItem.leftBarButtonItem = onlineUserCount
            user = User(uid: "FakeId", email: "alfredo.romero.r@outlook.com")
    }
    
    
    
    
    //MARK: Delegates
    
    //quantity of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    //the rows cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        let marketItem = items[indexPath.row]
        
        cell.textLabel?.text = marketItem.name
        cell.detailTextLabel?.text = marketItem.addedByUser
        
        toggleCellCheckbox(cell, isCompleted: marketItem.completed)
        
        return cell
        
    }
    
    func toggleCellCheckbox(_ cell: UITableViewCell, isCompleted: Bool){
        if !isCompleted{
            cell.accessoryType = .none
            cell.textLabel?.textColor = .black
            cell.detailTextLabel?.textColor = .black
        }else{
            cell.accessoryType = .checkmark
            cell.textLabel?.textColor = .gray
            cell.detailTextLabel?.textColor = .gray
        }
    }
    
    @IBAction func addItemDidTouch(_ sender: AnyObject){
        let alert = UIAlertController (
            title: "Grocery Item",
            message: "Add an Item",
            preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default){ _ in
            guard
                let textField = alert.textFields?.first,
                let text = textField.text,
                let user = self.user
            else { return }
        }
        
        let marketItem = MarketItem(
            name: text,
            addedByUser: user?.email
            completed: false)
        
    }
    
    

    
    
    
    //helpers
    
    @objc func onlineUserCountDidTouch() {
      performSegue(withIdentifier: listToUsers, sender: nil)
    }


}
