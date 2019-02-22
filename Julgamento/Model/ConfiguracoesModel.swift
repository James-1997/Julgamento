//
//  ConfiguracoesModel.swift
//  Julgamento
//
//  Created by Lucídio Andrade Barbosa de Souza on 21/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import Foundation
import UIKit

let tempoDosJogadores = [15,90,90,90,60,30,90,90,60,90,90,60,30,30]

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
