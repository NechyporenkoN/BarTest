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
    
    var imageCoffee = ""
    var textAboutCoffee = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImage.image = UIImage(named: imageCoffee)
        myTextView.text = textAboutCoffee

        
    }

}
