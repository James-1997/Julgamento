//
//  ExtensionGerenciaPersons.swift
//  Julgamento
//
//  Created by Robson James Junior on 07/03/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

extension GameViewController {

    
    //MARK: ---> Cut 4
    
        func setarJogadores() {
    
            var arrayPersonJT: [Int]? = nil
    
            if numDeJogadores == 4 {
                arrayPersonJT = (DivForGame(qtdJogadores: (numDeJogadores! - 2)) as! [Int])
                testemunha1.isHidden = true
                advgDefesa.isHidden = true
                testemunhaCase4.isHidden = false
            } else {
                testemunhaCase4.isHidden = true
                arrayPersonJT = (DivForGame(qtdJogadores: (numDeJogadores! - 3)) as! [Int])
            }
    
            let juri = arrayPersonJT![0]
            let testemunha = arrayPersonJT![1]
    
            switch juri{
            case 1:
                juri2.isHidden = true
                juri3.isHidden = true
            case 3:
                juri2.isHidden = false
                juri3.isHidden = false
            default:
                return
            }
    
            switch testemunha {
            case 1:
                testemunha2.isHidden = true
            case 2:
                testemunha2.isHidden = false
            default:
                return
            }
    
        }
    
    
}


// EXTENSION PARA GERENCIAR BUBBLE

extension GameViewController {
    
    // MARK: CUT 5
    
    func gerentBubble(){
        
        switch indexArray {
        case 0 :
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            viewTestemunha2_1.isHidden = true
            viewRéu.isHidden = true
            viewPromotoria.isHidden = true
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
        case 1 :
            
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            viewTestemunha2_1.isHidden = true
            viewRéu.isHidden = true
            viewPromotoria.isHidden = false
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
            
        case 2 :
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            if numDeJogadores == 4 {
                viewRéu.isHidden = false
            } else {
                viewTestemunha2_1.isHidden = false
            }
            
            viewPromotoria.isHidden = true
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
            
            
        case 3 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            viewRéu.isHidden = true
            viewTestemunha2_1.isHidden = true
            viewPromotoria.isHidden = false
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
            
        case 4 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            if numDeJogadores == 4 {
                viewRéu.isHidden = false
            } else {
                viewTestemunha2_1.isHidden = false
            }
            viewPromotoria.isHidden = true
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
            
            
        case 5 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha2_1.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            viewPromotoria.isHidden = true
            
            
            if numDeJogadores == 4 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 5 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 6 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 7 {
                viewJúri.isHidden = false
                viewJúri2.isHidden = false
                viewJuri3.isHidden = false
            }
            
            if numDeJogadores == 8 {
                viewJúri.isHidden = false
                viewJúri2.isHidden = false
                viewJuri3.isHidden = false
            }
            
        case 6 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            viewRéu.isHidden = true
            viewTestemunha2_1.isHidden = true
            viewPromotoria.isHidden = false
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
        case 7 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            
            viewRéu.isHidden = true
            viewTestemunha2_1.isHidden = true
            
            viewPromotoria.isHidden = false
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
            
        case 8 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewPromotoria.isHidden = true
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            if numDeJogadores == 4 {
                viewRéu.isHidden = false
            } else {
                viewTestemunha2_1.isHidden = false
            }
            
            
            
        case 9 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            viewRéu.isHidden = true
            viewTestemunha2_1.isHidden = true
            viewPromotoria.isHidden = true
            
            if numDeJogadores == 4 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 5 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 6 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 7 {
                viewJúri.isHidden = false
                viewJúri2.isHidden = false
                viewJuri3.isHidden = false
            }
            
            if numDeJogadores == 8 {
                viewJúri.isHidden = false
                viewJúri2.isHidden = false
                viewJuri3.isHidden = false
            }
            
        case 10:
            
            
            viewDecisãoDoJúri.isHidden = true
            if numDeJogadores == 4 {
                viewTestemunha2_1.isHidden = false
            }
            
            if numDeJogadores == 5 {
                viewTestemunha1.isHidden = false
                
            }
            
            if numDeJogadores == 6 {
                viewTestemunha1.isHidden = false
                viewTestemunha2.isHidden = false
            }
            
            if numDeJogadores == 7 {
                viewTestemunha1.isHidden = false
            }
            
            if numDeJogadores == 8 {
                viewTestemunha1.isHidden = false
                viewTestemunha2.isHidden = false
            }
            
            viewRéu.isHidden = true
            viewPromotoria.isHidden = true
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
            
        case 11 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            viewRéu.isHidden = true
            
            viewTestemunha2_1.isHidden = true
            
            viewPromotoria.isHidden = false
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
            
        case 12 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            if numDeJogadores == 4 {
                viewRéu.isHidden = false
            } else {
                viewTestemunha2_1.isHidden = false
            }
            viewPromotoria.isHidden = true
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
            
            
        case 13 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            
            viewRéu.isHidden = true
            viewTestemunha2_1.isHidden = true
            viewPromotoria.isHidden = true
            if numDeJogadores == 4 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 5 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 6 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 7 {
                viewJúri.isHidden = false
                viewJúri2.isHidden = false
                viewJuri3.isHidden = false
            }
            
            if numDeJogadores == 8 {
                viewJúri.isHidden = false
                viewJúri2.isHidden = false
                viewJuri3.isHidden = false
            }
            
        case 14 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            
            viewRéu.isHidden = true
            
            viewTestemunha2_1.isHidden = true
            
            viewPromotoria.isHidden = false
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
        case 15 :
            
            
            viewDecisãoDoJúri.isHidden = true
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            if numDeJogadores == 4 {
                viewRéu.isHidden = false
            } else {
                viewTestemunha2_1.isHidden = false
            }
            viewPromotoria.isHidden = true
            viewJúri.isHidden = true
            viewJúri2.isHidden = true
            viewJuri3.isHidden = true
            
        case 16 :
            
            viewDecisãoDoJúri.isHidden = false
            viewTestemunha1.isHidden = true
            viewTestemunha2.isHidden = true
            
            viewRéu.isHidden = true
            viewTestemunha2_1.isHidden = true
            viewPromotoria.isHidden = true
            if numDeJogadores == 4 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 5 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 6 {
                viewJúri.isHidden = false
            }
            
            if numDeJogadores == 7 {
                viewJúri.isHidden = false
                viewJúri2.isHidden = false
                viewJuri3.isHidden = false
            }
            
            if numDeJogadores == 8 {
                viewJúri.isHidden = false
                viewJúri2.isHidden = false
                viewJuri3.isHidden = false
            }
            
        default:
            return
        }
        
    }
    
    // MARK: CUT 6
    
    func zeraBubble(){
        viewDecisãoDoJúri.isHidden = true
        viewTestemunha1.isHidden = true
        viewTestemunha2.isHidden = true
        viewTestemunha2_1.isHidden = true
        viewRéu.isHidden = true
        viewPromotoria.isHidden = true
        viewJúri.isHidden = true
        viewJúri2.isHidden = true
        viewJuri3.isHidden = true
    }
    

}
