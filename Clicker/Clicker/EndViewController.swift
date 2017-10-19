//
//  EndViewController.swift
//  Clicker
//
//  Created by Admin on 19.10.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {
    
    @IBOutlet weak var ibLabelEndScore: UILabel!
    var endCount: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ibLabelEndScore.text = "Your score: \(endCount ?? 0)"
    }
    
}
