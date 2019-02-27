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
  
    @IBOutlet weak var powerUpTitle: UIImageView!
    @IBOutlet weak var powerUpDescription: UIImageView!
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
            powerUpTitle.image = powerUpDaVez!.imageTitle
            powerUpDescription.image = powerUpDaVez!.imageDescription
            powerUpBackground.image = powerUpDaVez!.backgroundImage
         
            
       
  
        case 11:

            powerUpDaVez = arrayPowerUp[randoPUp()]
            powerUpTitle.image = powerUpDaVez!.imageTitle
            powerUpDescription.image = powerUpDaVez!.imageDescription
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
