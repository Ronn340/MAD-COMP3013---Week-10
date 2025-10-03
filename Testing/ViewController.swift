//
//  ViewController.swift
//  Testing
//
//  Created by Ron Ramos on 24/9/2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let units : [String] = ["Mobile Apps Development", "Computer Graphics", "Technologies for Web Development", "Object Oriented Analysis", "Programming Techniques", "Computer Networking"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return units.count
    }
    
    // assign the values in your array variable to cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel!.text = units[indexPath.row]
        //cell.imageView???
    
        let image:UIImage = UIImage(named: "DevLogo.png" )!
        cell.imageView?.image = image
                                    
        return cell;
    }

}

