//
//  AudioPlayer.swift
//  Restart
//
//  Created by Monir Haider Helalee on 1/5/24.
//

import AVFoundation
import Foundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch{
            print("Could not play the sound file.")
        }
    }
}
