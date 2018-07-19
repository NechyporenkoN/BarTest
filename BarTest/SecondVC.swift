//
//  SecondVC.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 01.07.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myTextViev: UITextView!
    @IBOutlet weak var tasteText: UITextField!
    @IBOutlet weak var levelText: UITextField!
    
    
    //    var imageCocktail = ""
    //    var textAboutCocktail = ""
    
    var cocktailPul: Coctail?
    
   // var myImageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScreen()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "howMake" {
            let vc = segue.destination as? ThirdVC
            vc?.cocktailPulRecipe = cocktailPul
        }
        if segue.identifier == "history" {
            let vc = segue.destination as? HistoryVC
            vc?.cocktailPulHistory = cocktailPul
    }
    }
    func setupScreen() {
        guard let currentCocktail = cocktailPul else {
            return
        }
        myImage.image = UIImage(named: currentCocktail.image)
        myTextViev.text = currentCocktail.ingridients
        tasteText.text = currentCocktail.taste
        levelText.text = currentCocktail.level
    }
}
