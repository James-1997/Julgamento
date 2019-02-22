//
//  ConfiguracoesModel.swift
//  Julgamento
//
//  Created by Lucídio Andrade Barbosa de Souza on 21/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import Foundation
import UIKit
// Legenda
// 5 -> 15 seg
// 7 -> 30 seg
// 10 -> 90 seg
// 0 -> é o juri (que nao tem tempo)

let tempoDosJogadores = [5,7,7, 10,10,0 ,7,10,10,0, 10,10,0, 7,7,0]

func DivForGame (qtdJogadores: Int) -> [Int?] {
    let juriAndTest = qtdJogadores
    
    switch juriAndTest {
    case 2:
        return [1,1]
    case 3:
        return [1,2]
    case 4:
        return [3,1]
    case 5:
        return [3,2]
    default:
        return []
    }
}
