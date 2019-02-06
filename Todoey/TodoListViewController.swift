//
//  ViewController.swift
//  Todoey
//
//  Created by Abdel Monem El Mossalami on 29/01/2019.
//  Copyright © 2019 Mossalami. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Milk", "Buy Eggos", "Destroy Demogorgon"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = self.itemArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    //MARK - Tableview Delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      
        
       // print(indexPath.row)
       // print(itemArray[indexPath.row])
        
        if   tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            
              tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
              tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

