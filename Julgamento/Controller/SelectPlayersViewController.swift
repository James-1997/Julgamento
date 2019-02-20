//
//  ViewController.swift
//  Julgamento
//
//  Created by Robson James Junior on 19/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

class SelectPlayersViewController: UIViewController {
    
    @IBOutlet weak var numDePlayerLabel: UILabel!
    
    var quantJogadores = 4
    
    
    @IBAction func addPlayers(_ sender: Any) {
        if quantJogadores > 3 && quantJogadores < 8{
            quantJogadores = quantJogadores + 1
            numDePlayerLabel.text = "\(quantJogadores)"
            
        }
    }
    
    @IBAction func removePlayers(_ sender: Any) {
        if quantJogadores > 4 && quantJogadores < 9{
            quantJogadores = quantJogadores - 1
            numDePlayerLabel.text = "\(quantJogadores)"
            
        }
    }
    
    
    
    
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let _StrQtdPlayer = "\(quantJogadores)"
        numDePlayerLabel.text = _StrQtdPlayer
    }
   
    
// PRESS PLAY
    
//    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
//        print(presses)
//    }
    
    
    
}


