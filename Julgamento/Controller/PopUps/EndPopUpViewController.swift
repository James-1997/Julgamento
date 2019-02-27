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

    @IBOutlet weak var popUpTitle: UIImageView!
    @IBOutlet weak var popUpDescription: UIImageView!
    @IBOutlet weak var popUpBackground: UIImageView!
    
    //MARK: Variáveis
    var powerUpDaVez: PowerUpModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Mark: Aqui seta as labels
        
        setLabels()
        
        EndOfTurnView.layer.cornerRadius = 67.5
        EndOfTurnView.clipsToBounds = true
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: false)
        }
  
    }
    
    
    func setLabels() {
       
        switch globalRound {

        
        case 0:
            
            powerUpDaVez = arrayPowerUp[0]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
        //Round 1
        case 1:
           
            powerUpDaVez = arrayPowerUp[0]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
        case 2:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
        
        //Round 2
        case 3:
            
            powerUpDaVez = arrayPowerUp[1]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
            
        case 4:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
            
        case 5:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
        
        //round 3
        case 6:
            
            powerUpDaVez = arrayPowerUp[2]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
        case 7:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
        case 8:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
    
        case 9:
           
            powerUpDaVez = arrayPowerUp[5]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
        //Round 4
        case 10:
            
            powerUpDaVez = arrayPowerUp[3]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
        case 11:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
        //Round 5
        case 12:
            
            powerUpDaVez = arrayPowerUp[4]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
        case 13:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
        case 14:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpTitle.image = powerUpDaVez!.imageTitle
            popUpDescription.image = powerUpDaVez!.imageDescription
            popUpBackground.image = powerUpDaVez!.backgroundImage
            
            
        default:
            print("Error")
        }
    }
    
}
