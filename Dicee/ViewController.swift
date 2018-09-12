//
//  ViewController.swift
//  Dicee
//
//  Created by David Ashieze on 2018-09-10.
//  Copyright © 2018 David Ashieze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndeX1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArry = ["dice1", "dice2", "dice3", "dice4", "dice5","dice6" ]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceIndeX1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        print(randomDiceIndeX1)
        
        diceImageView1.image = UIImage(named: diceArry[randomDiceIndeX1])
        diceImageView2.image = UIImage(named: diceArry[randomDiceIndex2])
    }
    
}

