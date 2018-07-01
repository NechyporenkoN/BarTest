//
//  CoffeeVC.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 02.07.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import UIKit

class CoffeeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var arrayNamesOfCoffee = ["Espresso", "Americano", "Americano with milk", "Capuccino", "Latte", "Dopio", "Loongo", "Maciato"]
    
    var chooseCoffeeImage = ""
    var  aboutCoffee = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNamesOfCoffee.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellCoffee = tableView.dequeueReusableCell(withIdentifier: "cellCoffee", for: indexPath)
        cellCoffee.textLabel?.text = arrayNamesOfCoffee[indexPath.row]
        cellCoffee.detailTextLabel?.text = "->"
        return cellCoffee
    }
    
    //MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showCoffee", sender: nil)
        switch indexPath.row {
        case 0:
            chooseCoffeeImage = ""
            aboutCoffee = ""
            print("Espresso")
        case 1:
            chooseCoffeeImage = ""
            aboutCoffee = ""
            print("Americano")
        case 2:
            chooseCoffeeImage = ""
            aboutCoffee = ""
            print("Americano with milk")
        case 3:
            chooseCoffeeImage = ""
            aboutCoffee = ""
            print("Capuccino")
        case 4:
            chooseCoffeeImage = ""
            aboutCoffee = ""
            print("Latte")
        case 5:
            chooseCoffeeImage = ""
            aboutCoffee = ""
            print("Dopio")
        case 6:
            chooseCoffeeImage = ""
            aboutCoffee = ""
            print("Loongo")
        case 7:
            chooseCoffeeImage = ""
            aboutCoffee = ""
            print("Maciato")
        default:
            print("error")
        }
    }
}
