//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    var butt: Int = 0
//    let arrayButt = ["note1","note2", "note3", "note4", "note5", "note6","note7"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func notePressed(_ sender: UIButton) {
        
        
        if sender.tag == 1 {
            butt = sender.tag
        }
        else if sender.tag == 2 {
            butt = sender.tag
        }
        else if sender.tag == 3 {
            butt = sender.tag
        }
        else if sender.tag == 4 {
            butt = sender.tag
        }
        else if sender.tag == 5 {
            butt = sender.tag
        }
        else if sender.tag == 6 {
            butt = sender.tag
        }
        else if sender.tag == 7 {
            butt = sender.tag
        }
        
        playSound()
    }
    
    func playSound() {
        let soundUrl = Bundle.main.url(forResource:"note\(butt)", withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
            
        }
        catch   {
            print (error)
        }
        
        audioPlayer.play()
        
    }
    
}

