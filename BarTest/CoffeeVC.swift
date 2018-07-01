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
    
    
    var arrayNamesOfCoffee = ["Espresso", "Americano", "Americano with milk", "Capuccino", "Latte", "Dopio", "Loongo", "Maciato", "Mochaccino"]
    
    var chooseCoffeeImage = ""
    var  aboutCoffee = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCoffee" {
            let vc = segue.destination as? SecondCoffeeVC
            vc?.imageCoffee = chooseCoffeeImage
            let vcText = segue.destination as? SecondCoffeeVC
            vcText?.textAboutCoffee = aboutCoffee
        }
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
            chooseCoffeeImage = "espresso"
            aboutCoffee = "Espresso"
            print("Espresso")
        case 1:
            chooseCoffeeImage = "americano"
            aboutCoffee = "Americano"
            print("Americano")
        case 2:
            chooseCoffeeImage = "americano"
            aboutCoffee = "Americano with milk"
            print("Americano with milk")
        case 3:
            chooseCoffeeImage = "capuccino"
            aboutCoffee = "Capuccino"
            print("Capuccino")
        case 4:
            chooseCoffeeImage = "latte"
            aboutCoffee = "Latte"
            print("Latte")
        case 5:
            chooseCoffeeImage = "espresso"
            aboutCoffee = "Dopio"
            print("Dopio")
        case 6:
            chooseCoffeeImage = "espresso"
            aboutCoffee = "Loongo"
            print("Loongo")
        case 7:
            chooseCoffeeImage = "maciato"
            aboutCoffee = "Maciato"
            print("Maciato")
        case 8:
            chooseCoffeeImage = "mochaccino"
            aboutCoffee = "Mochaccino"
            print("Mochaccino")
        default:
            print("error")
        }
    }
}
