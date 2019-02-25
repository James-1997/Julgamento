//
//  ProvaDoCrimeViewController.swift
//  Julgamento
//
//  Created by Eliza Maria Porto de Carvalho on 23/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

class ProvaDoCrimeViewController: UIViewController {

    
    @IBOutlet weak var provaDoCrimeView: UIView!
    @IBOutlet weak var popUpLabel: UILabel!
    @IBOutlet weak var popUpImage: UIImageView!
    
    
    //MARK: Variáveis
    var powerUpDaVez: PowerUpModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setLabels()
        
        provaDoCrimeView.layer.cornerRadius = 16
        provaDoCrimeView.clipsToBounds = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: false)
        }

        
    }
    
    
    func setLabels() {
        
        switch globalRound {
            
        case 1:
            
            powerUpDaVez = arrayPowerUp[7]
            popUpLabel.text = powerUpDaVez!.nome
            
       
  
        case 9:
            
            powerUpDaVez = arrayPowerUp[3]
            popUpLabel.text = powerUpDaVez!.nome
        
   
            
        default:
            print("Error")
        }
    }

    
}
