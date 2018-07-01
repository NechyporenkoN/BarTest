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
    
    
    var imageCocktail = ""
    var textAboutCocktail = ""
    
    var myImageView = UIImageView()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        myImage.image = UIImage(named: imageCocktail)
        myTextViev.text = textAboutCocktail
    }
    
   



}
