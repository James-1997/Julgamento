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
    
    
    @IBOutlet weak var playerOne: UIImageView!
    
    @IBOutlet weak var playerTwo: UIImageView!
    
    @IBOutlet weak var playerThree: UIImageView!
    
    @IBOutlet weak var playerFour: UIImageView!
    
    @IBOutlet weak var playerFive: UIImageView!
    
    @IBOutlet weak var resumStory: UILabel!
    
    @IBOutlet weak var backGroudImage: UIImageView!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var namePerson: UILabel!
    
    @IBOutlet weak var funcPerson: UILabel!
    

    //MARK: Variáveis
    
    var históriaSelecionada: Story = arrayDeEstórias[0]
    
    var rounds: Int = 0
    
    var indexArray = 0
    
    var timer = Timer()
    
    var time: Int = 0
    
    var activeButton: Bool = false
    var numDeJogadores: Int?
   
    @IBAction func start(_ sender: Any) {
        if activeButton == false {
            activeButton = true
            timerGame()
           
        }
    }
    
    func timerGame(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GameViewController.action1), userInfo: nil, repeats: true)
    }
    
    
    // funcao usada p/ dizer o que vai acontecer durante o decorrer do timer
    @objc func action1 () {
        
        startButton.isHidden = true
        temporizador()
        
    }
    
    
    //MARK: POP-UP FUNCTIONS
    
    func turnEndFeedback(){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let test = storyboard.instantiateViewController(withIdentifier: "EndPopUpViewController")
        
        self.present(test, animated: true) {
            
            self.timer.invalidate()
        }
        
    }
    

    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resumStory.text = históriaSelecionada.história
        backGroudImage.image = históriaSelecionada.image
        rounds = 1
        gerRound()
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
        namePerson.text = "APRESENTAÇÃO"
        funcPerson.text = "Advogados terão 15 segundos para preparar suas apresentacões"
        time = tempoDosJogadores[indexArray]
        if indexArray == 1 {
            namePerson.text = "Promotoria"
            funcPerson.text = "apresente sua acusação"
            timerLabel.text = ("00:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
        }
        else if indexArray == 2 {
            namePerson.text = "defesa"
            funcPerson.text = "apresente-se"
            timerLabel.text = ("00:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            rounds += 1
            
        }
    }
    
    // MARK: ROUND 2
    
    func round2(){
        activeButton = false
        if indexArray == 3{
            namePerson.text = "Promotoria"
            funcPerson.text = "sua vez"
            timerLabel.text = ("01:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
        }
        else if indexArray == 4{
            
            namePerson.text = "defesa"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("01:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
        }
        else if indexArray == 5{
            namePerson.text = "juri"
            funcPerson.text = "PODE FAZER UMA PERGUNTA"
            timerLabel.text = ("00:00")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            rounds += 1
        }
        
    }
    
    func round3(){
        activeButton = false
        if indexArray == 6 {
            namePerson.text = "TESTEMUNHA"
            funcPerson.text = "TESTEMUNHE"
            timerLabel.text = ("00:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
        }
        else if indexArray == 7 {
            namePerson.text = "PROMOTORIA"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("01:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
        }
        else if indexArray == 8 {
            
            namePerson.text = "DEFESA"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("00:00")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
        }
        else if indexArray == 9 {
            
            namePerson.text = "JURI"
            funcPerson.text = "PODE FAZER UMA PERGUNTA"
            timerLabel.text = ("00:00")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            rounds += 1
            
        }
        
    }
    
    func round4(){
        activeButton = false
        if indexArray == 9 {
            namePerson.text = "Promotoria"
            funcPerson.text = "sua vez"
            timerLabel.text = ("01:30")
            activeButton = false
            startButton.isHidden = false
            time = tempoDosJogadores[indexArray]
        }
        else if indexArray == 10 {
            
            namePerson.text = "defesa"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("01:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
        }
        else if indexArray == 11 {
            
            namePerson.text = "juri"
            funcPerson.text = "PODE FAZER UMA PERGUNTA"
            timerLabel.text = ("00:00")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            rounds += 1
            
        }
        
    }
    
    func round5(){
        activeButton = false
        if indexArray == 12 {
            namePerson.text = "Promotoria"
            funcPerson.text = "sua vez"
            timerLabel.text = ("00:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
        }
        else if indexArray == 13 {
            
            namePerson.text = "defesa"
            funcPerson.text = "SUA VEZ"
            timerLabel.text = ("00:30")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            
        }
        else if indexArray == 14 {
            
            namePerson.text = "juri"
            funcPerson.text = "VOTA"
            timerLabel.text = ("00:00")
            startButton.isHidden = false
            activeButton = false
            time = tempoDosJogadores[indexArray]
            rounds += 1
            
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
            indexArray += 1
            self.timer.invalidate()
            gerRound()
            turnEndFeedback()
        }
    }
    
    // MARK: PRESS PLAY
    
    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        
    }
    
    
}





