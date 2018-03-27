//
//  ViewController.swift
//  The Magic Ball
//
//  Created by Abdelkoddous Zaidi on 27.03.18.
//  Copyright © 2018 Abdelkoddous Zaidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image_MagicBall: UIImageView!
    
    //create array with all magicBall picture
    let magicBalls = ["ball1","ball2","ball3","ball4","ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func asButton(_ sender: Any) {
        
        updateMagicBall()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateMagicBall()
    }

    private func updateMagicBall(){
        
        let randomBall = Int(arc4random_uniform(UInt32(magicBalls.count)))
        
        image_MagicBall.image = UIImage(named: magicBalls[randomBall])
        
    
    }
    

}

