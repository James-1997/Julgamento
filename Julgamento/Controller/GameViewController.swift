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
    
    
  // default
    
    @IBOutlet weak var testemunha1: UIImageView!
    
    @IBOutlet weak var juri1: UIImageView!
    
    @IBOutlet weak var reu: UIImageView!
    
    @IBOutlet weak var advgDefesa: UIImageView!
    
    @IBOutlet weak var promotoria: UIImageView!
    
    
    
    @IBOutlet weak var resumStory: UILabel!
    @IBOutlet weak var backGroudImage: UIImageView!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var namePerson: UILabel!
    @IBOutlet weak var funcPerson: UILabel!
    
    //Balao de Identificação
    
    @IBOutlet weak var viewTestemunha1: UIView!
    
    @IBOutlet weak var viewTestemunha2: UIView!
    
    
    @IBOutlet weak var viewTestemunha2_1: UIView!

    
    @IBOutlet weak var viewRéu: UIView!
    
    @IBOutlet weak var viewPromotoria: UIView!
    
    @IBOutlet weak var viewJúri: UIView!
    
    @IBOutlet weak var viewJúri2: UIView!
    
    @IBOutlet weak var viewJuri3: UIView!

    @IBOutlet weak var viewAdvogadoDeDefesa: UIView!
    //Botoes do Balão de Identificação
    
    
    @IBOutlet weak var botãoTestemunha1: UIButton!
    
    @IBOutlet weak var botãoTestemunha2: UIButton!
    
    @IBOutlet weak var botãoTestemunha2_1: UIButton!
    
    @IBOutlet weak var botãoRéu: UIButton!
    
    @IBOutlet weak var botãoPromotor: UIButton!
    
    @IBOutlet weak var botãoJúri: UIButton!
    
    @IBOutlet weak var botãoJúri2: UIButton!
    
    @IBOutlet weak var botãoJúri3: UIButton!
    
    @IBOutlet weak var botãoAdvogadoDeDefesa: UIView!
    
    //POP-UP Connections
   
 
    //MARK: Variáveis
    
    var históriaSelecionada: Story = arrayDeEstórias[0]
    var rounds: Int = 0
    var indexArray = 0
    var timer = Timer()
    var time: Int = 0
    var activeButton: Bool = false
    var numDeJogadores: Int?
    var indexArrayPopUp: Int!
    let shapeLayer = CAShapeLayer()
    
    
    
    //MARK Funções
    
    @IBAction func start(_ sender: Any) {
        if activeButton == false {
            activeButton = true
            timerGame()
            
            // animaçao do circulo
            
            let basicAnimate = CABasicAnimation(keyPath: "strokeEnd")
            
           // basicAnimate.toValue = -1
            if tempoDosJogadores[indexArray] == 15{
                basicAnimate.toValue = -1
                basicAnimate.duration = Double(tempoDosJogadores[indexArray]) + 18
                basicAnimate.fillMode = CAMediaTimingFillMode.forwards
                basicAnimate.isRemovedOnCompletion = false
                
                shapeLayer.add(basicAnimate, forKey: "basic")
                
            } else if tempoDosJogadores[indexArray] == 30{
                basicAnimate.toValue = -1
                basicAnimate.duration = Double(tempoDosJogadores[indexArray]) + 33
                basicAnimate.fillMode = CAMediaTimingFillMode.forwards
                basicAnimate.isRemovedOnCompletion = false
                
                shapeLayer.add(basicAnimate, forKey: "basic")
                
            } else if tempoDosJogadores[indexArray] == 90{
                basicAnimate.toValue = -1
                basicAnimate.duration = Double(tempoDosJogadores[indexArray]) + 91.5
                basicAnimate.fillMode = CAMediaTimingFillMode.forwards
                basicAnimate.isRemovedOnCompletion = false
            
                shapeLayer.add(basicAnimate, forKey: "basic")
            
        }
        
           
        }
    }
    
    func timerGame(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GameViewController.action1), userInfo: nil, repeats: true)
    }
    
    
    // funcao usada p/ dizer o que vai acontecer durante o decorrer do timer
    @objc func action1 () {
        
        namePerson.isHidden = false
        startButton.isHidden = true
        temporizador()
        
    }
    
    //MARK: POP-UP FUNCTIONS
    
    func powerUpPopUP(){
        
        // Mark: Passando Data para processar em tela do Pop-Up
        globalRound = indexArray
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let test = storyboard.instantiateViewController(withIdentifier: "EndPopUpViewController")
        
        self.present(test, animated: true) {
            
            self.timer.invalidate()
        }
        
        
    }
  
    
    func provaDoCrimePopUp(){
        
        globalRound = indexArray
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let test = storyboard.instantiateViewController(withIdentifier: "ProvaDoCrimeViewController")
        
        self.present(test, animated: true) {
            self.timer.invalidate()
        }
    
    }
    

    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
        //Escondendo Balões de identificação
        viewTestemunha1.isHidden = true
        viewTestemunha2.isHidden = true
        viewTestemunha2_1.isHidden = true
        viewRéu.isHidden = true
        viewPromotoria.isHidden = true
        viewJúri.isHidden = true
        viewJúri2.isHidden = true
        viewJuri3.isHidden = true
        viewAdvogadoDeDefesa.isHidden = true
        
        
        
        namePerson.isHidden = true
        
        backGroudImage.image = históriaSelecionada.image
        rounds = 1
        timerLabel.text = "00:15"
        gerRound()
        // Setando jogadores
        
        setarJogadores()
        // circulo de tempo
        
//        timerLabel.textAlignment = .center
        let center = timerLabel.center
        let circularPath = UIBezierPath(arcCenter: center, radius: 65, startAngle:  3*CGFloat.pi/2 , endAngle: -CGFloat.pi/2, clockwise: false)
        
    
        shapeLayer.path = circularPath.cgPath
        
        shapeLayer.strokeColor = #colorLiteral(red: 0.01408086903, green: 0.1323899627, blue: 0.1906898916, alpha: 1)
        shapeLayer.lineWidth = 25
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        
        shapeLayer.strokeEnd = 1
        
        pranchetaView.layer.addSublayer(shapeLayer)
        
        
    }
    // MARK: Animacao de descer prancheta
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, animations: {self.pranchetaView.frame.origin.y += 320})
    }
    
    
    // MARK: Setando os personagens
    func setarJogadores() {
        var arrayPersonJT: [Int]? = nil
        
        if numDeJogadores == 4 {
            arrayPersonJT = (DivForGame(qtdJogadores: (numDeJogadores! - 2)) as! [Int])
            testemunha1.isHidden = true
            advgDefesa.isHidden = true
            testemunhaCase4.isHidden = false
        } else {
            testemunhaCase4.isHidden = true
            arrayPersonJT = (DivForGame(qtdJogadores: (numDeJogadores! - 3)) as! [Int])
        }
        
        let juri = arrayPersonJT![0]
        let testemunha = arrayPersonJT![1]
        
        switch juri{
        case 1:
            juri2.isHidden = true
            juri3.isHidden = true
        case 3:
            juri2.isHidden = false
            juri3.isHidden = false
        default:
            return
        }
        
        switch testemunha {
        case 1:
            testemunha2.isHidden = true
        case 2:
            testemunha2.isHidden = false
        default:
            return
        }
        
    }
    
    
    // MARK: Gerenciador de Rounds
    func gerRound () {
        
        switch rounds {
            
        case 1:
            
            round1()
            
        case 2:
            
            round2()
            
        case 3:
            
            round3()
            
        case 4:
        
            round4()
            
        case 5:
            round5()
            
        default:
            return
        }
        
    }
    
    
    // MARK: ROUND 1
    
    func round1 (){
        
        
        
        if indexArray == 0{
            
            namePerson.text = "PREPARE SEU ARGUMENTO!"
            funcPerson.text = "Advogados terão 15 segundos para preparar suas apresentacões"
            time = tempoDosJogadores[indexArray]
            startButton.isHidden = false
            activeButton = false
            
            powerUpPopUP()
        }
    
        if indexArray == 1 {
            
            //Round 1
            powerUpPopUP()
            
           // namePerson.text = "PROMOTORIA"
            namePerson.text = "TURNO 1!"
            funcPerson.text = "apresente sua acusação"
            timerLabel.text = ("0:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            viewPromotoria.isHidden = false
            
            
            
            
            
        }
        else if indexArray == 2 {
            
            
            namePerson.text = "DEFESA"
            funcPerson.text = "apresente-se"
            timerLabel.text = ("0:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            rounds += 1
            
            
            //Acabou o tempo
            powerUpPopUP()
        }
        
        
        
    }
    
    // MARK: ROUND 2
    
    func round2(){
        
        
        activeButton = false
        if indexArray == 3{
            
            //Round 2
            powerUpPopUP()
            
            
            
            namePerson.text = "PROMOTORIA"
            funcPerson.text = "sua vez"
            timerLabel.text = ("1:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
           
            
        }
        else if indexArray == 4{
            

            namePerson.text = "DEFESA"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("1:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
            //Prova do crime popUp
            provaDoCrimePopUp()
           
            
        }
        else if indexArray == 5{
            

            namePerson.text = "JURI"
            funcPerson.text = "PODE FAZER UMA PERGUNTA"
            timerLabel.text = ("0:00")
            startButton.isHidden = false
            activeButton = false
            if indexArray == 3{
                
                //Round 2
                powerUpPopUP()
                
                
                
                namePerson.text = "Promotoria"
                funcPerson.text = "sua vez"
                timerLabel.text = ("1:30")
                startButton.isHidden = false
                activeButton = false
                time = tempoDosJogadores[indexArray]
                
                
                
            }
            else if indexArray == 4{
                
                
                namePerson.text = "defesa"
                funcPerson.text = "SUA VEZ"
                timerLabel.text = ("1:30")
                startButton.isHidden = false
                activeButton = false
                time = tempoDosJogadores[indexArray]
                
                //Prova do crime popUp
                provaDoCrimePopUp()
                
                
            }
            else if indexArray == 5{
                
                
                namePerson.text = "juri"
                funcPerson.text = "PODE FAZER UMA PERGUNTA"
                timerLabel.text = ("0:00")
                startButton.isHidden = false
                activeButton = false
                time = tempoDosJogadores[indexArray]
                rounds += 1
                
                //Acabou o Tempo
                powerUpPopUP()
            }
        }
        
        
        
    }
    
    // MARK: ROUND 3
    func round3(){
        activeButton = false
        if indexArray == 6 {
            
            //Round 3 PopUp
            powerUpPopUP()
            
            namePerson.text = "TESTEMUNHA"
            funcPerson.text = "TESTEMUNHE"
            timerLabel.text = ("0:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
        }
        else if indexArray == 7 {
            namePerson.text = "PROMOTORIA"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("1:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
           
            //Acabou o tempo popUP
            powerUpPopUP()
        }
        else if indexArray == 8 {
            
            namePerson.text = "DEFESA"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("0:00")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
            //Acabou o tempo popUP
            powerUpPopUP()
            
        }
        else if indexArray == 9 {
            
            namePerson.text = "JURI"
            funcPerson.text = "PODE FAZER UMA PERGUNTA"
            timerLabel.text = ("0:00")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            rounds += 1
            
            //Acabou o tempo popUP
            powerUpPopUP()
        }
        
    }
    
    // MARK: ROUND 4
    
    func round4(){
        
       //2 Power up — Prova do Crime, Perjúrio ou Reviravolta
        
        activeButton = false
        if indexArray == 10 {
            
            print("promotor")
            powerUpPopUP()
            
            namePerson.text = "Promotoria"
            funcPerson.text = "sua vez"
            timerLabel.text = ("1:30")
            activeButton = false
            startButton.isHidden = false
            time = tempoDosJogadores[indexArray]
            
        }
        else if indexArray == 11 {
            
            namePerson.text = "defesa"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("1:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
           
            //Power Up
            provaDoCrimePopUp()
           
        }
        else if indexArray == 12 {
            
            namePerson.text = "juri"
            funcPerson.text = "PODE FAZER UMA PERGUNTA"
            timerLabel.text = ("0:00")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            rounds += 1
            
            powerUpPopUP()
            
           
        }
        
    }
    
    // MARK: ROUND 5
    
    func round5(){
        activeButton = false
        if indexArray == 13 {
            
            //Round 5 Pop-UP
            powerUpPopUP()
            
            namePerson.text = "Promotoria"
            funcPerson.text = "sua vez"
            timerLabel.text = ("0:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
           
        }
        else if indexArray == 14 {
            
            namePerson.text = "defesa"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("0:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
            //Acabou o tempo popUP
            powerUpPopUP()
            
        }
        else if indexArray == 15 {
            
            namePerson.text = "juri"
            funcPerson.text = "VOTA"
            timerLabel.text = ("0:00")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            rounds += 1
            
            //Acabou o tempo popUP
            powerUpPopUP()
        }
        
    }
    
    // MARK: TEMPORIZADOR
    
    func temporizador (){
        
        let min =  time/60
        let seg = time%60
        
        if time >= 70{
            timerLabel.text = "\(String(min)):\(String(seg))"
            time -= 1
        }
            
        else if time > 60{
            timerLabel.text = "0\(String(min)):0\(String(seg))"
            time -= 1
        }
            
        else if time == 60{
            timerLabel.text = "01:00"
            time -= 1
        }
        else if time < 60 && time >= 10{
            timerLabel.text = "00:\(String(seg))"
            // timerLabel.text = String(time)
            time -= 1
        }
        else if time < 10{
            timerLabel.text = "00:0\(String(seg))"
            time -= 1
        
            
        }
        if time < 0{
            
            if (indexArray == 0)  {
                
             //  powerUpPopUP()
                
            }
       
            
           // powerUpPopUP()
            indexArray += 1
            self.timer.invalidate()
            
            gerRound()
            
        }
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
