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
    
    // MARK: ROUNDS
    
    func round1 (){
        
        namePerson.text = "APRESENTAÇÃO"
        funcPerson.text = "Advogados terão 15 segundos para preparar suas apresentacões"
        time = tempoDosJogadores[indexArray]
        if indexArray == 1{
            namePerson.text = "Promotoria"
            funcPerson.text = "apresente sua acusação"
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
            timerLabel.text = "\(String(min)):0\(String(seg))"
            time -= 1
        }
            
        else if time == 60{
            timerLabel.text = "1:00"
            time -= 1
        }
        else if time < 60 && time >= 10{
            timerLabel.text = "0:\(String(seg))"
            // timerLabel.text = String(time)
            time -= 1
        }
        else if time < 10{
            timerLabel.text = "0:0\(String(seg))"
            time -= 1
        }
        if time == 0{
            indexArray += 1
          //  turnEndFeedback()
        }
    }
    
    
    
    //MARK: POP-UP FUNCTIONS
    
    func turnEndFeedback(){
        
        //      print("savedFeedback")
      
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let test = storyboard.instantiateViewController(withIdentifier: "EndPopUpViewController")
        
        self.present(test, animated: true) {
            
            self.timerLabel.text = "0:00"
            self.timer.invalidate()
        }
        
    }
    
    
    
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resumStory.text = históriaSelecionada.história
        backGroudImage.image = históriaSelecionada.image
        
        
        time = tempoDosJogadores[indexArray]
        
        round1()
        
        //        namePerson.text = "Diabrete"
        //
        //        funcPerson.text = "Testemunha"
        
    }
    
    // MARK: PRESS PLAY
    
    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        if activeButton == false {
            activeButton = true
            timerGame()
        }
    }
    
}

