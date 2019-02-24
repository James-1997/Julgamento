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
    var powerUpDaVez: PowerUpModel = arrayPowerUp[0]
    
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
        case 1:
            popUpLabel.text = powerUpDaVez.nome
        case 2:
            print ("Faz o resto aqui")
        default:
            print("Error")
        }
    }
    
}
