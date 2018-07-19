//
//  HistoryVC.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 18.07.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import UIKit

class HistoryVC: UIViewController {
    
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var myImage: UIImageView!
    
   // var myImageView = UIImageView()
    
    var cocktailPulHistory: Coctail?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScreen()
    }
    
    func setupScreen() {
        guard let currentCocktail = cocktailPulHistory else {
            return
        }
        myImage.image = UIImage(named: currentCocktail.image)
        myTextView.text = currentCocktail.discription
    }
}
