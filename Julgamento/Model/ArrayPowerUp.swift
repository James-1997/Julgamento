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
    
    PowerUpModel(name: "TURNO 1!", backgroundImage: UIImage(named: "1ºTurno")),
    PowerUpModel(name: "TURNO 2!", backgroundImage: UIImage(named: "2ºTurno") ),
    PowerUpModel(name: "TURNO 3!", backgroundImage: UIImage(named: "3ºTurno")),
    PowerUpModel(name: "TURNO 4!", backgroundImage: UIImage(named: "4ºTurno") ),
    PowerUpModel(name: "TURNO 5!", backgroundImage: UIImage(named: "5ºTurno")),
    
    //Acabou o tempo pop-up
    PowerUpModel(name: "TEMPO ESGOTADO!", backgroundImage: UIImage(named: "TempoEsgotado1")),
    
    //Power Ups
    PowerUpModel(name: "Prova do Crime 1", backgroundImage: UIImage(named: "ProvaDoCrime1")),
    PowerUpModel(name: "Prova do Crime 2", backgroundImage: UIImage(named: "ProvaDoCrime2")),
    PowerUpModel(name: "Perjúrio", backgroundImage: UIImage(named: "PerjúrioPopUp1")),
    PowerUpModel(name: "Reviravolta", backgroundImage: UIImage(named: "ReviravoltaPopUp")),

]

var globalRound: Int = 0
