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
    
    
    //MARK: Variáveis
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
        provaDoCrimeView.layer.cornerRadius = 16
        provaDoCrimeView.clipsToBounds = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: false)
        }

        
    }

   
}
