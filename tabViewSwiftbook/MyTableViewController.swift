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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = restaurants[indexPath.row]
        cell.typeLebel.text = "\(indexPath)"
        cell.imageOfPlace.image =  UIImage(named: restaurants[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height/2
        cell.imageOfPlace.clipsToBounds = true
        return cell
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}


