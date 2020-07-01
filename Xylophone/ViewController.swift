//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var i:Int = 0
    var Buttonarray = ["C","D","E","F","G","A","B"]
    @IBAction func keyPressed(_ sender: UIButton) {
        print(sender.tag)
        i = sender.tag
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: Buttonarray[i], withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
    
}

