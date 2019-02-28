//
//  TimeOut.swift
//  Julgamento
//
//  Created by Lucídio Andrade Barbosa de Souza on 28/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import Foundation
import AVFoundation

class TimeOut {
    static let sharedHelper = TimeOut()
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "PowerUp8", ofType: "mp3")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = 0
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play the file")
        }
    }
}
