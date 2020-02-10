//
//  MyTableViewController.swift
//  tabViewSwiftbook
//
//  Created by Анна on 10.02.2020.
//  Copyright © 2020 Анна. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    
    let restaurants = ["alalla","slssls","Бочка","Классик", "Шок", "Балкан Гриль"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = restaurants[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath)"
        cell.imageView?.image =  UIImage(named: restaurants[indexPath.row])
        return cell
    }
    

}


