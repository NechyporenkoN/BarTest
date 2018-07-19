//
//  ThirdVC.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 18.07.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myTextView: UITextView!
    
   // var myImageView = UIImageView()
    
    var cocktailPulRecipe: Coctail?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScreen()
        
    }
    
    func setupScreen() {
        guard let currentCocktail = cocktailPulRecipe else {
            return
        }
        myImage.image = UIImage(named: currentCocktail.image)
        myTextView.text = currentCocktail.recipe
    }
}
