//
//  ViewController.swift
//  FirebaseToDo_1
//
//  Created by LuisRomero on 28/02/22.
//

import UIKit
import FirebaseAnalytics


class ViewController: UITableViewController {
    
//MARK: Properties
    
    var todoItems = [TodoItem]() {
        didSet {
            print("todo items was setup")
            tableView.reloadData()
        }
    }
    
    let reuseIdentifier = "TodoCell"
    
  //new circle button
    lazy var createNewButton: UIButton = {
        let button = UIButton()
        button.tintColor = .red
        button.backgroundColor = .green
        button.setImage(UIImage(systemName: "plus.circle"), for: .normal)
        button.layer.zPosition = CGFloat(Float.greatestFiniteMagnitude)
        
        button.addTarget(self, action: #selector(createNewTodo), for: .touchUpInside)
        
        return button
    }()
    
    
//MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Analytics.logEvent("InitScreen", parameters: ["message":"Integracion de Firebase completa"])
        
        configureTableView()
                
        PostService.shared.fetchAllItems{ (allItems) in
            self.todoItems = allItems
        }
        
    }
//MARK: Selectors
    @objc func createNewTodo(){
        let vc = CreateTodoController()
        present(vc, animated: true, completion: nil)
    }
    
    
    

//MARK: Helper Functions
    
    func configureTableView(){
        tableView.backgroundColor = .lightGray
        tableView.register(TodoCell.self, forCellReuseIdentifier: reuseIdentifier)
        
        tableView.rowHeight = 75
        tableView.separatorColor = .systemRed
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        
        tableView.tableFooterView = UIView()
        
        
        //create new circle button
        tableView.addSubview(createNewButton)
        createNewButton.anchor(bottom: tableView.safeAreaLayoutGuide.bottomAnchor, right: tableView.safeAreaLayoutGuide.rightAnchor, paddingBottom: 16, paddingRight: 16, width: 56, height: 56)
        createNewButton.layer.cornerRadius = 56 / 2
        createNewButton.alpha = 1
        
    }

}

//MARK: Helper Functions

extension ViewController{
//put the quantity to the rows that you want to be
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TodoCell else {
            return UITableViewCell()}
        
        cell.todoItem = todoItems[indexPath.row]
        
                
        return cell
    }
//animation row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Update status of the cell
        //Incomplete -> Finished
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

