//
//  ViewController.swift
//  MAPD714-F2017-Lesson8
//
//  Created by Tejal Patel on 2017-11-22.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    
    private let movies = ["BatMan vs SuperMan" , "Blade Runner 2019", "Thor:Ragnork", "Justice League", "WonderWoman" , "Dark Tower", "Star Wars: The Last Jedi"]
    
    let simpleTableIdentifier = "SimpleTableIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
          }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        
        if (cell == nil){
            cell = UITableViewCell(style: .default, reuseIdentifier: simpleTableIdentifier)
        }
        
        cell?.textLabel?.text = movies[indexPath.row]
        return cell!
    }

}

