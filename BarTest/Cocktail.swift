//
//  Cocktail.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 17.07.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import Foundation

class Coctail {
    
    var name: String
    var discription: String
    var image: String
    var ingridients: String
    var recipe: String
    
    init(name: String, discription: String, image: String, ingridients: String, recipe: String) {
        self.name = name
        self.discription = discription
        self.image = image
        self.ingridients = ingridients
        self.recipe = recipe
    }
}
