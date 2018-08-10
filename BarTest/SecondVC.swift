//
//  SecondVC.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 01.07.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myTextViev: UITextView!
    @IBOutlet weak var tasteText: UILabel!
    @IBOutlet weak var levelText: UILabel!
    
    var cocktailPull: Coctail?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScreen()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "howMake" {
            let vc = segue.destination as? ThirdVC
            vc?.cocktailPullRecipe = cocktailPull
        }
        if segue.identifier == "history" {
            let vc = segue.destination as? HistoryVC
            vc?.cocktailPullHistory = cocktailPull
        }
    }
    
    func setupScreen() {
        guard let currentCocktail = cocktailPull else {
            return
        }
        let tasteStr = "Вкус: "
        let levelStr = "Сложность: "
        myImage.image = UIImage(named: currentCocktail.image)
        myTextViev.text = currentCocktail.ingridients
        tasteText.text = tasteStr + currentCocktail.taste
        levelText.text = levelStr + currentCocktail.level
    }
}
