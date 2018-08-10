//
//  IngridientsVC.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 06.08.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import UIKit

class IngridientsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var choosedIngridients: String?
    var searching = false
    var searchIngridients = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cockByIng" {
            let vc = segue.destination as? ViewController
            vc?.ingridientsCocktailPull = choosedIngridients
        }
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return  searchIngridients.count
        } else {
            return arrayIngridients.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIngridients = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if searching {
            cellIngridients.textLabel?.text = searchIngridients[indexPath.row]
        } else{
            cellIngridients.textLabel?.text = arrayIngridients[indexPath.row]
        }
        cellIngridients.detailTextLabel?.text = "->"
        return cellIngridients
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let translationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 400, 0)
        cell.layer.transform = translationTransform
        
        UIView.animate(withDuration: 0.2, delay: 0.2 , options: .curveEaseInOut, animations: {
            cell.layer.transform = CATransform3DIdentity
        })
    }
    
    //MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosedIngridients = arrayIngridients[indexPath.row]
        performSegue(withIdentifier: "cockByIng", sender: nil)
    }
    
}
extension IngridientsVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        var searchArr = [String]()
        searchArr = arrayIngridients.filter ({ $0.prefix(searchText.count) == searchText})
        
        searchIngridients = searchArr
        searching = true
        tableView.reloadData()
        print(searchArr)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tableView.reloadData()
    }
}

