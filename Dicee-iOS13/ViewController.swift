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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image =  UIImage(imageLiteralResourceName: "DiceThree")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceSix")
    }

    @IBAction func rollButton(_ sender: UIButton) {
        print("Button got tapped")
        let rand1 = Int.random(in: 1...6)
        let rand2 = Int.random(in: 1...6)
        diceImageView1.image =  UIImage(imageLiteralResourceName: selectDice(num: rand1))
        diceImageView2.image = UIImage(imageLiteralResourceName: selectDice(num: rand2))
    }
    
    func selectDice(num: Int) -> String {
        switch (num){
        case 1:
                return "DiceOne"
        case 2:
            return "DiceTwo"
        case 3:
            return "DiceThree"
        case 4:
            return "DiceFour"
        case 5:
            return "DiceFive"
        case 6:
            return "DiceSix"
        default:
            return ""
        }
    }
    
}

