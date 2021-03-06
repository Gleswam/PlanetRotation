//
//  SoundPlayer.swift
//  PlanetRotation
//
//  Created by Глеб Малов on 13/12/21.
//

import AVFoundation


var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print(" ")
        }
    }
    
    
    
}
