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
    
  
//    var imageCocktail = ""
//    var textAboutCocktail = ""
    var cocktailPul: Coctail?
    
    var myImageView = UIImageView()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupScreen()
        
    }
    
    func setupScreen() {
        guard let currentCocktail = cocktailPul else {
            return
        }
        myImage.image = UIImage(named: currentCocktail.image)
        myTextViev.text = currentCocktail.discription
    }
   



}
