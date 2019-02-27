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
            popUpLabel.text = powerUpDaVez!.name
            
        //Round 1
        case 1:
           
            powerUpDaVez = arrayPowerUp[0]
            popUpLabel.text = powerUpDaVez!.name
            
        case 2:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.name
            
        //Round 2
        case 3:
            
            powerUpDaVez = arrayPowerUp[1]
            popUpLabel.text = powerUpDaVez!.name
            
        case 4:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.name
            
        case 5:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.name
            
        //round 3
        case 6:
            
            powerUpDaVez = arrayPowerUp[2]
            popUpLabel.text = powerUpDaVez!.name
            
        case 7:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.name
            
        case 8:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.name
    
        case 9:
           
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.name
            
        //Round 4
        case 10:
            
            powerUpDaVez = arrayPowerUp[3]
            popUpLabel.text = powerUpDaVez!.name
            
        case 11:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.name
            
        //Round 5
        case 12:
            
            powerUpDaVez = arrayPowerUp[4]
            popUpLabel.text = powerUpDaVez!.name
            
        case 13:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.name
            
        case 14:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.name
            
            
        default:
            print("Error")
        }
    }
    
}
