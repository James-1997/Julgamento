//
//  ExtensioForTime.swift
//  Julgamento
//
//  Created by Robson James Junior on 07/03/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import UIKit
import Foundation

extension GameViewController {
    
    
    // MARK: CUT 0
    
    func timerGame(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GameViewController.action1), userInfo: nil, repeats: true)
    }
    
    
    // funcao usada p/ dizer o que vai acontecer durante o decorrer do timer
    @objc func action1 () {
        if tempoDosJogadores[indexArray] == 0 {
            indexArray += 1
            self.timer.invalidate()
            zeraBubble()
            gerRound()
        } else {
            temporizador()
        }
    }
    
    
  //  MARK: Cut ---> 1
    
    func startAnimationTime () {
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
    
    
    // MARK: ---> Cut 2
    
    func animationTimer(){
        let basicAnimate = CABasicAnimation(keyPath: "strokeEnd")
        
        // basicAnimate.toValue = -1
        if tempoDosJogadores[indexArray] == 15 {
            basicAnimate.toValue = -1
            basicAnimate.duration = Double(tempoDosJogadores[indexArray]) + 18
            basicAnimate.fillMode = CAMediaTimingFillMode.forwards
            basicAnimate.isRemovedOnCompletion = false
            
            shapeLayer.add(basicAnimate, forKey: "basic")
            
        } else if tempoDosJogadores[indexArray] == 30 {
            basicAnimate.toValue = -1
            basicAnimate.duration = Double(tempoDosJogadores[indexArray]) + 33
            basicAnimate.fillMode = CAMediaTimingFillMode.forwards
            basicAnimate.isRemovedOnCompletion = false
            
            shapeLayer.add(basicAnimate, forKey: "basic")
            
        } else if tempoDosJogadores[indexArray] == 90 {
            basicAnimate.toValue = -1
            basicAnimate.duration = Double(tempoDosJogadores[indexArray]) + 91.5
            basicAnimate.fillMode = CAMediaTimingFillMode.forwards
            basicAnimate.isRemovedOnCompletion = false
            
            shapeLayer.add(basicAnimate, forKey: "basic")
            
        }
    }
    
}

extension GameViewController {
    
    
    // MARK: TEMPORIZADOR
    // MARK: Cut 8
    
    func temporizador (){
        //        if endTime == true {
        //            indexArray += 1
        //            self.timer.invalidate()
        //            gerRound()
        //        }
        
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
            zeraBubble()
            gerRound()
            
        }
    }
    
    
    
    
    
}
