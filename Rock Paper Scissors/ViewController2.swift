//
//  ViewController2.swift
//  Rock Paper Scissors
//
//  Created by Roy Jezmajian on 3/4/18.
//  Copyright © 2018 Roy Jezmajian. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var gameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameLabel.text = game.gameResult()
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}

