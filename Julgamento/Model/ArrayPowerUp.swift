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
    
    PowerUpModel(imageDescription: UIImage(named: "1TurnoDescrição"), imageTitle: UIImage(named: "1TurnoTitulo"), backgroundImage: UIImage(named: "PopUpView")),
    PowerUpModel(imageDescription: UIImage(named: "2TurnoDescrição"), imageTitle: UIImage(named: "2TurnoTitulo"), backgroundImage: UIImage(named: "PopUpView")),
    PowerUpModel(imageDescription: UIImage(named: "3TurnoDescrição"), imageTitle: UIImage(named: "3TurnoTitulo"), backgroundImage: UIImage(named: "PopUpView")),
    PowerUpModel(imageDescription: UIImage(named: "4TurnoDescrição"), imageTitle: UIImage(named: "4TurnoTitulo"), backgroundImage: UIImage(named: "PopUpView")),
    PowerUpModel(imageDescription: UIImage(named: "5TurnoDescrição"), imageTitle: UIImage(named: "5TurnoTitulo"), backgroundImage: UIImage(named: "PopUpView")),
    
    
    //Acabou o tempo pop-up
    PowerUpModel(imageDescription: UIImage(named: "AcabouOTempoDescrição"), imageTitle: UIImage(named: "AcabouOTempoTitulo"), backgroundImage: UIImage(named: "AcabouOTempoView")),
    
    //Power Ups
    PowerUpModel(imageDescription: UIImage(named: "PerjúrioDesrição"), imageTitle: UIImage(named: "PerjúrioTitulo"), backgroundImage: UIImage(named: "PowerUpView")),
    PowerUpModel(imageDescription: UIImage(named: "ProvaDoCrimeDescrição1"), imageTitle: UIImage(named: "ProvaDoCrimeTitulo"), backgroundImage: UIImage(named: "PowerUpView")),
    PowerUpModel(imageDescription: UIImage(named: "ProvaDoCrimeDescrição2"), imageTitle: UIImage(named: "ProvaDoCrimeTitulo"), backgroundImage: UIImage(named: "PowerUpView")),
    PowerUpModel(imageDescription: UIImage(named: "ReviravoltaDescrição"), imageTitle: UIImage(named: "ReviravoltaTitulo"), backgroundImage: UIImage(named: "PowerUpView")),
    
    
    
    

//    //PowerUps
//    PowerUpModel(nome: "Uma prova do crime foi encontrada!",imageDescription: nil, imageTitle: nil),
//    PowerUpModel(nome: "Aconteceu uma Reviravolta",imageDescription: nil, imageTitle: nil),
//    PowerUpModel(nome: "Alguém cometeu perjúrio!",imageDescription: nil, imageTitle: nil),
//

]

var globalRound: Int = 0
