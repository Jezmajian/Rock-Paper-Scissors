//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Roy Jezmajian on 3/3/18.
//  Copyright © 2018 Roy Jezmajian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rockButton(_ sender: UIButton) {
        game.playerMove = .rock
        performSegue(withIdentifier: "RPSMoveSegue", sender: self)
    }
    
    @IBAction func paperButton(_ sender: UIButton) {
        game.playerMove = .paper
        performSegue(withIdentifier: "RPSMoveSegue", sender: self)
    }
    
    @IBAction func scissorsButton(_ sender: UIButton) {
        game.playerMove = .scissors
        performSegue(withIdentifier: "RPSMoveSegue", sender: self)
    }
    
}

