//
//  ArrayPowerUp.swift
//  Julgamento
//
//  Created by Eliza Maria Porto de Carvalho on 23/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import Foundation
import UIKit

var arrayPowerUp: [PowerUpModel] = [
    
   
    //Identificação de turnos
    PowerUpModel(nome: "Turno 1",imageDescription: nil, descrição: "INTRODUÇÃO",imageTitle: nil),
    PowerUpModel(nome: "Turno 2",imageDescription: nil, descrição: "DEFESA X ATAQUE",imageTitle: nil),
    PowerUpModel(nome: "Turno 3",imageDescription: nil, descrição: "TESTEMUNHAS",imageTitle: nil),
    PowerUpModel(nome: "Turno 4",imageDescription: nil, descrição: "TESTEMUNHAS",imageTitle: nil),
    PowerUpModel(nome: "Turno 5",imageDescription: nil, descrição: "CONSIDERAÇÕES FINAIS",imageTitle: nil),
        PowerUpModel(nome: "SEU TEMPO ACABOU!",imageDescription: nil, descrição: "DEFESA X ATAQUE",imageTitle: nil),
    
    //PowerUps
    PowerUpModel(nome: "Uma prova do crime foi encontrada!",imageDescription: nil, descrição: "CONSIDERAÇÕES FINAIS",imageTitle: nil),
    PowerUpModel(nome: "Aconteceu uma Reviravolta",imageDescription: nil, descrição: "CONSIDERAÇÕES FINAIS",imageTitle: nil),
    PowerUpModel(nome: "Alguém cometeu perjúrio!",imageDescription: nil, descrição: "CONSIDERAÇÕES FINAIS",imageTitle: nil),
 

]

var globalRound: Int = 0
