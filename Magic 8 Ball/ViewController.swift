//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Joshua Wickster on 8/10/19.
//  Copyright © 2019 Joshua Wickster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let arrayOfEighBalls = ["ball1","ball2","ball3", "ball4", "ball5"]

    @IBOutlet weak var eighBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Function that implements motion that allows user to shake phone to roll dice
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateEightBallImages()
        
    }

    @IBAction func smashButton(_ sender: UIButton) {
        updateEightBallImages()
    }
    
    func updateEightBallImages(){
        
               let randomEightBallIndex = Int.random(in: 0...4)
              
        eighBallImage.image = UIImage(named: arrayOfEighBalls[randomEightBallIndex])
              
               
        
        
    }

    
}

