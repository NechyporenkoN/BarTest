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
   
    var choosedCoffee: Coffee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCoffee" {
            let vc = segue.destination as? SecondCoffeeVC
            vc?.coffeePull = choosedCoffee
        }
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Arr().arrayCoffee.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellCoffee = tableView.dequeueReusableCell(withIdentifier: "cellCoffee", for: indexPath)
        cellCoffee.textLabel?.text = Arr().arrayCoffee[indexPath.row].name
        cellCoffee.detailTextLabel?.text = "->"
        cellCoffee.imageView?.image = UIImage(named: Arr().arrayCoffee[indexPath.row].image)
        return cellCoffee
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
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
        choosedCoffee = Arr().arrayCoffee[indexPath.row]
        performSegue(withIdentifier: "showCoffee", sender: nil)
    }
}
