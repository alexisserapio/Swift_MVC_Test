//
//  Pokemon.swift
//  MVC
//
//  Created by Alexis Serapio on 01/08/25.
//

import Foundation

struct Pokemon {
    let image_id: Int
    let name: String
    
    //init es el equivalente al constructor
    init(image_id: Int, name: String) {
        self.image_id = image_id
        self.name = name
    }
}
