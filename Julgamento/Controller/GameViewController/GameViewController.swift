//
//  ViewController.swift
//  Julgamento
//
//  Created by Robson James Junior on 19/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit
import Foundation

class GameViewController: UIViewController {
    

    // Prancheta View
    
    @IBOutlet weak var pranchetaView: UIView!
    
  // jogadores variantes
    
    @IBOutlet weak var testemunha2: UIImageView!
    @IBOutlet weak var juri2: UIImageView!
    @IBOutlet weak var juri3: UIImageView!
    @IBOutlet weak var testemunhaCase4: UIImageView!
    

  //Decisão Do juri
    
    @IBOutlet weak var viewDecisãoDoJúri: UIView!
    @IBOutlet weak var viewQtdVotos: UIView!
    @IBOutlet weak var qtdVotosLabel: UILabel!
    
    
  // default
    
    @IBOutlet weak var testemunha1: UIImageView!
    @IBOutlet weak var juri1: UIImageView!
    @IBOutlet weak var reu: UIImageView!
    @IBOutlet weak var advgDefesa: UIImageView!
    @IBOutlet weak var promotoria: UIImageView!
    @IBOutlet weak var backGroudImage: UIImageView!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
   
    
    //Balao de Identificação
    
    @IBOutlet weak var viewTestemunha1: UIView!
    
    @IBOutlet weak var viewTestemunha2: UIView!
    
    @IBOutlet weak var viewTestemunha2_1: UIView!
    
    @IBOutlet weak var viewRéu: UIView!
    
    @IBOutlet weak var viewPromotoria: UIView!
    
    @IBOutlet weak var viewJúri: UIView!
    
    @IBOutlet weak var viewJúri2: UIView!
    
    @IBOutlet weak var viewJuri3: UIView!

   
   //Tela de Resultado
    
    @IBOutlet weak var pranchetaTitleLabel: UILabel!
    
    @IBOutlet weak var reuTitleLabel: UILabel!
    
    @IBOutlet weak var reuDescriptionLabel: UILabel!
    
    @IBOutlet weak var icidenteTitleLabel: UILabel!
    
    @IBOutlet weak var icidenteDescricaoLabel: UILabel!
    
    @IBOutlet weak var vitimaTitleLabel: UILabel!
    
    @IBOutlet weak var vitimaDescriptionLabel: UILabel!
    
    @IBOutlet weak var localTitleLabel: UILabel!
    
    @IBOutlet weak var localDescriptionLabel: UILabel!
    
    // Labels de Prancheta
    
    @IBOutlet weak var reuNamePranch: UILabel!
    
    @IBOutlet weak var incidenteNamePranch: UILabel!
    
    @IBOutlet weak var vitimaNamePranch: UILabel!
    
    @IBOutlet weak var localNamePranch: UILabel!
    
    
    @IBOutlet weak var result: UILabel!
    
    
    //MARK: Variáveis
    
    var históriaSelecionada: Story = arrayDeEstórias[0]
    var activeButton: Bool = false
    var numDeJogadores: Int?
 
    var timer = Timer()
    var time: Int = 0
    let shapeLayer = CAShapeLayer()
    var animationPranchete: Bool = false
    
    var numDeVotosInocente: Int = 0
    var numDeVotosCulpado: Int = 0
    var totalDeVotos: Int = 0
    var endTime: Bool = false
    var decisãoFinal: String?
    
    var rounds: Int = 0
    var indexArray = 0
    
    var indexArrayPopUp: Int!
    

    @IBAction func start(_ sender: Any) {
       
        if activeButton == false {
//            if animationPranchete == true {
//                upView()
//                animationPranchete = false
//            }
            
            activeButton = true
            timerGame()
            
            
    // MARK: animaçao do circulo
            animationTimer()
            
            startButton.isHidden = true
//            startButton.setTitle("Terminei", for: .normal)
        }
//            else {
//            endTime = true
//        }
    }
    


    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
      
        initLabelsPrancheta()
        
        startButton.isHidden = true
        //gestureRecognizer
        
        rounds = 1
        backGroudImage.image = históriaSelecionada.image
        timerLabel.text = "00:00"
        gerentBubble()
        gerRound()
        // Setando jogadores
        
        setarJogadores()
        // circulo de tempo
        startAnimationTime()

        
    }
    
    
    // MARK: Animacao de descer prancheta
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, animations: {self.pranchetaView.frame.origin.y += 350})
        animationPranchete = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            UIView.animate(withDuration: 1, animations: { self.pranchetaView.frame.origin.y -= 350
                                                        self.startButton.isHidden = false
            })
        }
        
    }

    
    func downView(){
        UIView.animate(withDuration: 1, animations: {self.pranchetaView.frame.origin.y += 320}, completion: nil)
        animationPranchete = true
    }
    
    // MARK: Animacao de subir prancheta
    
    func upView(){
        UIView.animate(withDuration: 1, animations: {self.pranchetaView.frame.origin.y -= 320}, completion: nil)
        animationPranchete = true
    }
    
    

    // MARK: PRESS PLAY
    
//    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
//
//    }

    //Mark: Passing data for pop-up
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        var dataIndexArray = indexArray
//        let endPopUpViewController = segue.destination as! EndPopUpViewController
//        endPopUpViewController.dataIndexArray = dataIndexArray
//
//    }
    
 

}
