//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    let dices = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButton(_ sender: UIButton) {
        diceImageView1.image =  UIImage(imageLiteralResourceName: dices.randomElement()!)
        diceImageView2.image = UIImage(imageLiteralResourceName: dices.randomElement()!)
    }
}

