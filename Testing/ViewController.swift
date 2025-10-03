//
//  ViewController.swift
//  Testing
//
//  Created by Ron Ramos on 24/9/2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    let units : [String] = ["Mobile Apps Development", "Computer Graphics", "Technologies for Web Development", "Object Oriented Analysis", "Programming Techniques", "Computer Networking"]
    

    var enrolled: Set<Int> = [0, 2]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return units.count
    }
    
    // assign the values in your array variable to cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UnitCell", for: indexPath) as! CustomCell

        let name = units[indexPath.row]
        var imageLogo: String!
        
        if indexPath.row == 0 {
            imageLogo = "mobileLogo.png"
        } else {
            imageLogo = "DevLogo.png"
        }
        
        let isEnrolled = enrolled.contains(indexPath.row)
        
        cell.configure(name: name, logoName: imageLogo, enrolled: isEnrolled)
        return cell
    }
}

