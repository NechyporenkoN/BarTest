//
//  Ingridients.swift
//  BarTest
//
//  Created by Nikita Nechyporenko on 06.08.18.
//  Copyright © 2018 Nikita Nechyporenko. All rights reserved.
//

import Foundation

class Ingridients {
    
    var name: String
    var alcoholic: Bool
    var image: String
    var discriptione: String
    
    init(name: String, alcoholic: Bool, image: String, discriptione: String ) {
        self.name = name
        self.alcoholic = alcoholic
        self.image = image
        self.discriptione = discriptione
    }
}
