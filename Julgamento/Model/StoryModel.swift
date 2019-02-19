//
//  StoryModel.swift
//  Julgamento
//
//  Created by Eliza Maria Porto de Carvalho on 19/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import Foundation
import UIKit

class Story{
    
    let titulo: String
    let história: String
    var gênero: String
    let image: UIImage
    
    
    init(titulo: String, história: String, gênero: String, image: UIImage) {
        self.titulo = titulo
        self.história = história
        self.gênero = gênero
        self.image = image
        
    }
    
}
