//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by luis salazar on 11/20/18.
//  Copyright © 2018 F Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBall : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomBallImage()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomBallImage()
    }
    
    func randomBallImage() {
        randomBall = Int(arc4random_uniform(5))
        
        print(randomBall)
        
        ballImageView.image = UIImage(named: ballArray[randomBall])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        randomBallImage()
    }
}

