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
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    var choosedCocktail: Coctail?
    var searching = false
    var searchCocktail = [Coctail]()
    var arrayCocktailsVC = [Coctail]()
    var ingridientsCocktailPull: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // searchInCoctail()
    }
    
    override func viewWillAppear(_ animated: Bool) {
      
        searchInCoctail()
        
    }
    
    func searchInCoctail() {
        guard let currentSearchCocktail = ingridientsCocktailPull else {
            return
        }
        arrayCocktails = arrayCocktails.filter { $0.ingridients.contains(currentSearchCocktail) }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showInformation" {
            let vc = segue.destination as? SecondVC
            vc?.cocktailPull = choosedCocktail
        }
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return  searchCocktail.count
        } else {
            return arrayCocktails.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellCocktail = tableView.dequeueReusableCell(withIdentifier: "cellCocktail", for: indexPath)
        if searching {
            cellCocktail.textLabel?.text = searchCocktail[indexPath.row].name
        } else{
            cellCocktail.textLabel?.text = arrayCocktails[indexPath.row].name
        }
        cellCocktail.detailTextLabel?.text = ":)"
        cellCocktail.imageView?.image = UIImage(named: arrayCocktails[indexPath.row].image)
        return cellCocktail
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let translationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 400, 0)
        cell.layer.transform = translationTransform
        
        UIView.animate(withDuration: 0.2, delay: 0.2, options: .curveEaseInOut, animations: {
            cell.layer.transform = CATransform3DIdentity
        })
    }
    
    //MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosedCocktail = arrayCocktails[indexPath.row]
        performSegue(withIdentifier: "showInformation", sender: nil)
    }
}

extension ViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        var searchArr = [Coctail]()
        searchArr = arrayCocktails.filter { $0.name.contains(searchText) }
        
        searchCocktail = searchArr
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





