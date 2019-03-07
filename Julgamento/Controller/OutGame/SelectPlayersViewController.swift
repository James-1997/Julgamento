//
//  ViewController.swift
//  Julgamento
//
//  Created by Robson James Junior on 19/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

class SelectPlayersViewController: UIViewController {
    
    
    @IBOutlet weak var playerOneView: UIView!
    
    
    @IBOutlet weak var playerOneLabel: UILabel!
    
    @IBOutlet weak var playerTwoView: UIView!
    
    @IBOutlet weak var playerTwoLabel: UILabel!
 
    
    @IBOutlet weak var playerThreeView: UIView!
    
    @IBOutlet weak var playerThreeLabel: UILabel!
    
    @IBOutlet weak var playerFiveView: UIView!
    
    @IBOutlet weak var playerFiveLabel: UILabel!
    
   
    @IBOutlet weak var playerFourView: UIView!
    
    @IBOutlet weak var playerFourLabel: UILabel!
    
    
    @IBOutlet weak var numDePlayerLabel: UILabel!
    
    
    @IBOutlet weak var playerThreePerfImage: UIImageView!
    
    
    var quantJogadores = 4
    var juri: Int?
    var test: Int?
    
    @IBAction func addPlayers(_ sender: Any) {
        if quantJogadores > 3 && quantJogadores < 8{
            quantJogadores = quantJogadores + 1
            numDePlayerLabel.text = "\(quantJogadores)"
            divPersons()
            self.playerThreeLabel.text = "1"
            self.playerThreePerfImage.image = UIImage(named: "elfo_perfil")
        }
    }
    
    @IBAction func removePlayers(_ sender: Any) {
        if quantJogadores > 4 && quantJogadores < 9{
            quantJogadores = quantJogadores - 1
            numDePlayerLabel.text = "\(quantJogadores)"
            if quantJogadores > 4 {
                divPersons()
            } else {
                self.playerThreeLabel.text = "0"
                self.playerThreePerfImage.image = UIImage(named: "elfo_perfil_desatived")
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
        setDesignViews()
        let _StrQtdPlayer = "\(quantJogadores)"
        numDePlayerLabel.text = _StrQtdPlayer
        self.playerThreePerfImage.image = UIImage(named: "elfo_perfil_desatived")
        self.playerThreeLabel.text = "0"
    }
   
    
    func divPersons() {
        let qtdJuriTest = quantJogadores - 3
        let restDiv = DivForGame(qtdJogadores: qtdJuriTest)
        self.juri = restDiv[0]
        self.test = restDiv[1]
        playerFourLabel.text = "\(juri!)"
        playerFiveLabel.text = "\(test!)"
    }
    
    func setDesignViews(){
        self.playerOneView.layer.cornerRadius = playerOneView.frame.size.height / 2
        self.playerTwoView.layer.cornerRadius = playerTwoView.frame.size.height / 2
        self.playerThreeView.layer.cornerRadius = playerThreeView.frame.size.height / 2
        self.playerFourView.layer.cornerRadius = playerFourView.frame.size.height / 2
        self.playerFiveView.layer.cornerRadius = playerFiveView.frame.size.height / 2

    }
    
}


