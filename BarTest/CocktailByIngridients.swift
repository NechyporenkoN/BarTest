//
//  CocktailByIngridients.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 10.08.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

//import UIKit
//
//class CocktailByIngridients: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    @IBOutlet weak var tableView: UITableView!
//
//     var ingridientsCocktailPull: String?
//    var choosedCocktail: Coctail?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        searchInCoctail()
//    }
//
//    func searchInCoctail() {
//        if let currentSearchCocktail = ingridientsCocktailPull {
//            return
//                arrayCocktails = arrayCocktails.filter { $0.ingridients.contains(currentSearchCocktail) }
//        }
//    }
//
//    //MARK: - UITableViewDataSource
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        arrayCocktails.count
//        return arrayCocktails.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cellCocktail = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cellCocktail.textLabel?.text = arrayCocktails[indexPath.row].name
//        return cellCocktail
//    }
//
//    //MARK: - UITableViewDelegate
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        choosedCocktail = arrayCocktails[indexPath.row]
//        performSegue(withIdentifier: "cocktails", sender: nil)
//    }
//}

