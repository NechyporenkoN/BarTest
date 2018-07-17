//
//  SecondCoffeeVC.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 02.07.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import UIKit

class SecondCoffeeVC: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myTextView: UITextView!
    
    //    var imageCoffee = ""
    //    var textAboutCoffee = ""
    
    var coffeePul: Coffee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScreen()
        
    }
    
    func setupScreen() {
        guard let currentCoffee = coffeePul else {
            return
        }
        myImage.image = UIImage(named: currentCoffee.image)
        myTextView.text = currentCoffee.discription
        
        
    }
}

