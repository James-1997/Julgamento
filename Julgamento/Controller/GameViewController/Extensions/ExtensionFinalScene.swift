//
//  ExtensionFinalScene.swift
//  Julgamento
//
//  Created by Robson James Junior on 07/03/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

extension GameViewController {
    
    
    
    // MARK: CUT 8
    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        
        switch sender.direction {
            
        case .left:
            
            //culpado
            if ((numDeVotosCulpado >= 0) && numDeVotosCulpado < numDeJogadores!-3){
                
                numDeVotosCulpado += 1
                
                totalDeVotos = numDeVotosInocente + numDeVotosCulpado
                qtdVotosLabel.text = "\(numDeVotosInocente + numDeVotosCulpado)"
                if numDeVotosCulpado + numDeVotosInocente == numDeJogadores!-3 {
                    
                    clearPranch()
                    
                    decisãoFinal(totalDeVotos: numDeVotosInocente + numDeVotosCulpado, numDeVotosInocente: numDeVotosInocente, numDeVotosCulpado: numDeVotosCulpado)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                        self.downView()
                    }
                }
                
            }
            
        case .right:
            
            //inocente
            if ((numDeVotosInocente >= 0) && numDeVotosInocente < numDeJogadores!-3){
                
                numDeVotosInocente += 1
                
                totalDeVotos = numDeVotosInocente + numDeVotosCulpado
                qtdVotosLabel.text = "\(numDeVotosInocente + numDeVotosCulpado )"
                
                if numDeVotosCulpado + numDeVotosInocente == numDeJogadores!-3 {
                    
                    clearPranch()
                   
                    decisãoFinal(totalDeVotos: numDeVotosInocente + numDeVotosCulpado, numDeVotosInocente: numDeVotosInocente, numDeVotosCulpado: numDeVotosCulpado)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                        self.downView()
                    }
                }
                
            }
            
            
        default:
            return
        }
        
    }
    
    
    func decisãoFinal(totalDeVotos: Int, numDeVotosInocente: Int, numDeVotosCulpado: Int){
        
        if numDeVotosInocente > numDeVotosCulpado {
            
            culpado()
            
        }else{
            
            inocentado()
            
        }
        
    }
    
    
    
    func clearPranch(){
        
        reuNamePranch.isHidden = true
        localNamePranch.isHidden = true
        incidenteNamePranch.isHidden = true
        vitimaNamePranch.isHidden = true
        reuTitleLabel.isHidden = true
        vitimaTitleLabel.isHidden = true
        localTitleLabel.isHidden = true
        icidenteTitleLabel.isHidden = true
        result.isHidden = false
        
    }
    
    
    
    
    
    
    func culpado(){
        viewDecisãoDoJúri.isHidden = true
        localTitleLabel.isHidden = true
        localDescriptionLabel.isHidden = true
        
        decisãoFinal = "O Únicornio foi considerado culpado!"
        
        pranchetaTitleLabel.text = decisãoFinal
        reuTitleLabel.text = "Total de Votos: "
        reuDescriptionLabel.text = "\(totalDeVotos)"
        
        icidenteTitleLabel.text = "Votos para Inocentação: "
        icidenteDescricaoLabel.text = "\(numDeVotosInocente)"
        
        vitimaTitleLabel.text = "Votos para culpa: "
        vitimaDescriptionLabel.text = "\(numDeVotosCulpado)"
        
    }
    
    func inocentado(){
        viewDecisãoDoJúri.isHidden = true
        localTitleLabel.isHidden = true
        localDescriptionLabel.isHidden = true
        
        decisãoFinal = "O Únicornio foi inocentado!"
        
        pranchetaTitleLabel.text = decisãoFinal
        reuTitleLabel.text = "Total de Votos: "
        reuDescriptionLabel.text = "\(totalDeVotos)"
        
        icidenteTitleLabel.text = "Votos para Inocentação: "
        icidenteDescricaoLabel.text = "\(numDeVotosInocente)"
        
        vitimaTitleLabel.text = "Votos para culpa: "
        vitimaDescriptionLabel.text = "\(numDeVotosCulpado)"
    }
    
}
