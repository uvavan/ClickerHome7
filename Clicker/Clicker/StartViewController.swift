//
//  StartViewController.swift
//  Clicker
//
//  Created by Admin on 19.10.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var ibScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backToStartScreen(_ sender: UIStoryboardSegue){
        if let destVC = sender.source as? EndViewController {
            ibScoreLabel.text = "\(destVC.endCount ?? 10)"
            destVC.endCount = 0
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startClicker"{
           ibScoreLabel.text = "0"
        }
    }
}
