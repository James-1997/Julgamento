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
    var dataIndexArray: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if dataIndexArray == 1{
            
            popUpLabel.text = powerUpDaVez.nome
        
        }
        
        EndOfTurnView.layer.cornerRadius = 16
        EndOfTurnView.clipsToBounds = true
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: false)
        }
  
    }

}
