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
    var juri: Int?
    var test: Int?
    
    @IBAction func addPlayers(_ sender: Any) {
        if quantJogadores > 3 && quantJogadores < 8{
            quantJogadores = quantJogadores + 1
            numDePlayerLabel.text = "\(quantJogadores)"
            divPersons()
        }
    }
    
    @IBAction func removePlayers(_ sender: Any) {
        if quantJogadores > 4 && quantJogadores < 9{
            quantJogadores = quantJogadores - 1
            numDePlayerLabel.text = "\(quantJogadores)"
            if quantJogadores > 4 {
                divPersons()
            }
        }
        
      
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let numJogadores = quantJogadores
        let storyViewController = segue.destination as! StoryViewController
        storyViewController.numJogadores = numJogadores
        
    }
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let _StrQtdPlayer = "\(quantJogadores)"
        numDePlayerLabel.text = _StrQtdPlayer
        
    }
   
    
    func divPersons() {
        let qtdJuriTest = quantJogadores - 3
        let restDiv = DivForGame(qtdJogadores: qtdJuriTest)
        self.juri = restDiv[0]
        self.test = restDiv[1]
        print("J - \(juri)")
        print("T - \(test)")
    }
    
    
}


