//
//  Turnos.swift
//  Julgamento
//
//  Created by Lucídio Andrade Barbosa de Souza on 28/02/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import Foundation
import AVFoundation

class Turnos {
    static let sharedHelper = Turnos()
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "PowerUp25", ofType: "mp3")!)
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
