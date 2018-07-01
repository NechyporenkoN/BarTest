//
//  ViewController.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 12.07.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var choose = ""
    
    var arrayNamesOfCocktails = ["Daiquiri", "Tequila Sunrise", "Manhattan", "Black Russian", "Mojito", "White Russian", "Bloody Mary", "Blue Lagoon", "Negroni", "Margarita", "Cosmopolitan", "Mai Tai", "Long Island Iced Tea"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showInformation" {
            let vc = segue.destination as? SecondScreenVC
            vc?.imageCocktail = choose
        }
    }
        //MARK: - UITableViewDataSource
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayNamesOfCocktails.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cellCocktail = tableView.dequeueReusableCell(withIdentifier: "cellCocktail", for: indexPath)
            cellCocktail.textLabel?.text = arrayNamesOfCocktails[indexPath.row]
            cellCocktail.detailTextLabel?.text = "->"
            return cellCocktail
        }
        
        
        
        //MARK: - UITableViewDelegate
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "showInformation", sender: nil)
            switch indexPath.row {
            case 0:
                choose = "daiquiri"
                print("Daiquiri")
            case 1:
                // showTequilaSunriseImage()
                print("Tequila Sunrise")
            case 2:
                print("Manhattan")
            case 3:
                print("Black Russian")
            case 4:
                print("Mojito")
            case 5:
                print("White Russian")
            case 6:
                print("Bloody Mary")
            case 7:
                print("Blue Lagoon")
            case 8:
                print("Negroni")
            case 9:
                print("Margarita")
            case 10:
                print("Cosmopolitan")
            case 11:
                print("Mai Tai")
            case 12:
                print("Long Island Iced Tea")
            default:
                print("error")
            }
}
}

