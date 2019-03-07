//
//  ExtensionGerenciadorRounds.swift
//  Julgamento
//
//  Created by Robson James Junior on 07/03/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit

extension GameViewController {

    
    // MARK: CUT 7
    
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
            
        case 6:
            viewDecisãoDoJúri.isHidden = false
            initVotosJuri()
        default:
            return
        }
        
    }
    
    
    func initVotosJuri() {
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        leftSwipe.direction = .left
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        rightSwipe.direction = .right
        
        viewDecisãoDoJúri.addGestureRecognizer(leftSwipe)
        viewDecisãoDoJúri.addGestureRecognizer(rightSwipe)
        self.viewQtdVotos.layer.cornerRadius = viewQtdVotos.frame.size.height/2
    }
    
    
    
    // MARK: ROUND 1
    
    func round1 (){
        
        
        if indexArray == 0 {
            self.time = tempoDosJogadores[self.indexArray]
            //          startButton.isHidden = false
            self.activeButton = false
            self.gerentBubble()
            
        }
        
        if indexArray == 1 {
            powerUpPopUP()
            //Round 1
            
            
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:30")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
                
            }
            
            
        }
        else if indexArray == 2 {
            
            self.powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:30")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
                self.rounds += 1
            }
            //Acabou o tempo
        }
        
    }
    
    // MARK: ROUND 2
    
    func round2(){
        
        activeButton = false
        
        if indexArray == 3 {
            
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                //Round 2
                self.timerLabel.text = ("1:30")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
            }
        }
        else if indexArray == 4{
            //Prova do crime popUp
            provaDoCrimePopUp()
            
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("1:30")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
            }
            
        }
        else if indexArray == 5 {
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:00")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
                self.rounds += 1
            }
        }
    }
    
    // MARK: ROUND 3
    func round3(){
        
        if indexArray == 6 {
            
            //Round 3 PopUp
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:30")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
            }
            
        }
        else if indexArray == 7 {
            //Acabou o tempo popUP
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("1:30")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
            }
            
        }
        else if indexArray == 8 {
            //Acabou o tempo popUP
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:00")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
            }
            
        }
        else if indexArray == 9 {
            //Acabou o tempo popUP
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:00")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
                self.rounds += 1
            }
            
        }
        
    }
    
    // MARK: ROUND 4
    
    func round4(){
        
        //2 Power up — Prova do Crime, Perjúrio ou Reviravolta
        
        activeButton = false
        if indexArray == 10 {
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("1:30")
                self.activeButton = false
                self.startButton.isHidden = false
                self.time = tempoDosJogadores[self.indexArray]
            }
        }
        else if indexArray == 11 {
            //Power Up
            provaDoCrimePopUp()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("1:30")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
            }
            
        }
        else if indexArray == 12 {
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:00")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
                self.rounds += 1
            }
            
            
            
        }
        
    }
    
    // MARK: ROUND 5
    
    func round5(){
        
        if indexArray == 13 {
            //Round 5 Pop-UP
            powerUpPopUP()
            
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:30")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
            }
        }
        else if indexArray == 14 {
            //Acabou o tempo popUP
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:30")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
            }
        }
        else if indexArray == 15 {
            //Acabou o tempo popUP
            powerUpPopUP()
            DispatchQueue.main.asyncAfter(deadline: .now()+5.0) {
                self.gerentBubble()
                self.timerLabel.text = ("0:00")
                self.startButton.isHidden = false
                self.activeButton = false
                self.time = tempoDosJogadores[self.indexArray]
                self.rounds += 1
            }
            
        }
        
    }

}


// MARK: POP-UPS --> CUT 9

extension GameViewController {
    

    //MARK: POP-UP FUNCTIONS
    
    @objc func powerUpPopUP(){
        
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
    
}
