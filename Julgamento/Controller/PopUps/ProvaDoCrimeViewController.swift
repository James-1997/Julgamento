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
    @IBOutlet weak var powerUpBackground: UIImageView!
    
     var timer = Timer()
    
    //MARK: Variáveis
    var powerUpDaVez: PowerUpModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setLabels()
        
        provaDoCrimeView.layer.cornerRadius = 67.5
        provaDoCrimeView.clipsToBounds = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: false)
        }

        
    }
    
    
    func setLabels() {
        
        switch globalRound {
            
        
        case 4:
            
            powerUpDaVez = arrayPowerUp[7]
            powerUpBackground.image = powerUpDaVez!.backgroundImage
         
            
       
  
        case 11:

            powerUpDaVez = arrayPowerUp[randoPUp()]
            powerUpBackground.image = powerUpDaVez!.backgroundImage
            

        default:
            print("Error")
        }
    }

    
    
    func randoPUp () -> Int {
        
        let indexPUp = Int.random(in: 7 ... 8)
        
        return indexPUp
    }
    
}
