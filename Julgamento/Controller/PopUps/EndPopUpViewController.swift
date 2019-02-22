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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EndOfTurnView.layer.cornerRadius = 16
        EndOfTurnView.clipsToBounds = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: false)
        }

        
    }


   
}
