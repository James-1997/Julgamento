//
//  EndPopUpViewController.swift
//  Julgamento
//
//  Created by Eliza Maria Porto de Carvalho on 21/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

class EndPopUpViewController: UIViewController {

    @IBOutlet weak var EndOfTurnView: UIView!
    @IBOutlet weak var popUpLabel: UILabel!
    
    @IBOutlet weak var popUpImage: UIImageView!
    
    //MARK: Variáveis
    var powerUpDaVez: PowerUpModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Mark: Aqui seta as labels
        Turnos.sharedHelper.playBackgroundMusic()
        setLabels()
        
        EndOfTurnView.layer.cornerRadius = 67.5
        EndOfTurnView.clipsToBounds = true
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: false)
        }
  
    }
    
    
    func setLabels() {
       
        switch globalRound {

//        //Apresentação
//        case 0:
//
//            powerUpDaVez = arrayPowerUp[0]
//            popUpLabel.text = powerUpDaVez!.name
//
            
        //Round 1
            
            //Promotoria
        case 1:
            
            
           
            powerUpDaVez = arrayPowerUp[0]
            
            popUpImage.image = powerUpDaVez!.backgroundImage
            
            //Defesa
        case 2:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
            
        //Round 2 --- Prova do Crime
            
            //Promotoria
        case 3:
            
            powerUpDaVez = arrayPowerUp[1]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
            //Defesa
        case 4:
            
            powerUpDaVez = arrayPowerUp[6]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
            //Juri
        case 5:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
        //round 3
            
            //Testemunha
        case 6:
            
            powerUpDaVez = arrayPowerUp[2]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
            //Promotoria
        case 7:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
            //Defesa
        case 8:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpImage.image = powerUpDaVez!.backgroundImage
    
            //Juri
        case 9:
           
            powerUpDaVez = arrayPowerUp[3]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
        //Round 4 -- Power-UP
          
            //Promotoria
        case 10:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpImage.image = powerUpDaVez!.backgroundImage
           
            //Defesa
        case 11:
            
            powerUpDaVez = arrayPowerUp[4]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
        //Round 5
            
            //promotoria
        case 12:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
            //Defesa
        case 13:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpImage.image = powerUpDaVez!.backgroundImage
            //Juri
        case 14:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpImage.image = powerUpDaVez!.backgroundImage
            
            
        default:
            print("Error")
        }
    }
    
}
