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
        
        EndOfTurnView.layer.cornerRadius = 16
        EndOfTurnView.clipsToBounds = true
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: false)
        }
  
    }
    
    
    func setLabels() {
       
        switch globalRound {

        case 0:
            powerUpDaVez = arrayPowerUp[0]
            popUpLabel.text = powerUpDaVez!.nome

            
        case 1:
            //Round 1
            powerUpDaVez = arrayPowerUp[0]
            popUpLabel.text = powerUpDaVez!.nome
            
        case 2:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.nome
        case 3:
            //Round 2
            powerUpDaVez = arrayPowerUp[1]
            popUpLabel.text = powerUpDaVez!.nome
            
        case 4:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.nome
            
        case 5:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.nome
            
        case 6:
            //round 3
            powerUpDaVez = arrayPowerUp[2]
            popUpLabel.text = powerUpDaVez!.nome
        case 7:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.nome
         
            
        case 8:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.nome
            
            print("Case 8 - Defesa: \(popUpLabel.text) ")
            
        case 9:
            //Round 4
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.nome
            
            print("Case 9 - Juri: \(popUpLabel.text) ")
            
            
        case 10:
            
            powerUpDaVez = arrayPowerUp[3]
            popUpLabel.text = powerUpDaVez!.nome
            
            print("Case 8 - Round 4: \(popUpLabel.text) ")
            
        case 11:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.nome
            
        case 12:
            //Round 5
            powerUpDaVez = arrayPowerUp[4]
            popUpLabel.text = powerUpDaVez!.nome
            
        case 13:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.nome
        case 14:
            
            powerUpDaVez = arrayPowerUp[5]
            popUpLabel.text = powerUpDaVez!.nome
            
            
        default:
            print("Error")
        }
    }
    
}
