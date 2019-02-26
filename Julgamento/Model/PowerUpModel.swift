//
//  PowerUpModel.swift
//  Julgamento
//
//  Created by Eliza Maria Porto de Carvalho on 23/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

class PowerUpModel{
   
    let nome: String?
    let imageDescription: UIImage?
    let descrição: String?
    let imageTitle: UIImage?
    
    init(nome: String?, imageDescription: UIImage?, descrição: String?,imageTitle: UIImage?) {
        
        self.nome = nome
        self.imageDescription = imageDescription
        self.descrição = descrição
        self.imageTitle = imageTitle
        
    }

}
