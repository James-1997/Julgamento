//
//  PerfilPersonagemModel.swift
//  Julgamento
//
//  Created by Eliza Maria Porto de Carvalho on 19/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import Foundation
import UIKit

class PerfilDoPersonagem{
   
    let nome: String
    let personalidade: String
    var papel: String
    let image: UIImage

    
    init(nome: String, personalidade: String, papel: String,image: UIImage) {
        self.nome = nome
        self.personalidade = personalidade
        self.papel = papel
        self.image = image
        
    }
    
}
