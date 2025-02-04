//
//  ViewController.swift
//  Soundboard
//
//  Created by Matheus Franceschini on 31/01/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var soundButtonCollection: [UIButton]!
    
    var audioPlayer: AVAudioPlayer!
    var animalName: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print(error.localizedDescription)
        }
    }

    func configureLayout() {
        let borderColor: CGColor = CGColor(red: 48/255, green: 48/255, blue: 48/255, alpha: 1)
        
        for button in soundButtonCollection {
            button.layer.cornerRadius = 16
            button.layer.borderWidth = 3
            button.layer.borderColor = borderColor
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        switch sender.tag {
        case 0:
            animalName = "chicken"
            break
        case 1:
            animalName = "cow"
            break
        case 2:
            animalName = "pig"
            break
        case 3:
            animalName = "dog"
            break
        case 4:
            animalName = "cat"
            break
        case 5:
            animalName = "dolphin"
            break
        case 6:
            animalName = "lion"
            break
        case 7:
            animalName = "dinossaur"
            break
        default:
            animalName = "dragon"
            break
        }
        
        let sound = Bundle.main.url(forResource: "\(animalName)-sound", withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: sound!)
        audioPlayer.play()
    }

}
