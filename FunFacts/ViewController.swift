//
//  ViewController.swift
//  FunFacts
//
//  Created by Dustin Morando on 9/3/16.
//  Copyright © 2016 Dustin Morando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel = FactModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showFunFact() {
        let randomeColor = ColorModel().getRandomColor()
        view.backgroundColor = randomeColor
        funFactButton.tintColor = randomeColor
        funFactLabel.text = factModel.getRandomFact()
    }
    
}

