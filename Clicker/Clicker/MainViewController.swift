//
//  MainViewController.swift
//  Clicker
//
//  Created by Admin on 19.10.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    var count: Int = 0
    var time: Int = 30
    var timer = Timer()
    
    @IBOutlet weak var ibBlueButton: UIButton!
    @IBOutlet weak var ibRedButton: UIButton!
    @IBOutlet weak var ibGreenButton: UIButton!
    @IBOutlet weak var ibScoreLabelInMainView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTap()
        ibScoreLabelInMainView.text = "\(count)"
        
    }
    
    func timeTic(){
        // var time = 30
        time = time - 1
        if time <= 0 {
            performSegue(withIdentifier: "endGame", sender: self)
        }
    }
    
    func showTap(){
        let rendom = arc4random_uniform(3)
        switch rendom {
        case 0:
            tapHidden(redTap: false)
        case 1:
            tapHidden(blueTap: false)
        case 2:
            tapHidden(greenTap: false)
        default:
            tapHidden()
        }
    }
    
    func tapHidden( blueTap: Bool = true, greenTap: Bool = true, redTap: Bool = true){
        ibGreenButton.isHidden = greenTap
        ibBlueButton.isHidden = blueTap
        ibRedButton.isHidden = redTap
    }

    @IBAction func pressAnyTap(_ sender: Any) {
        showTap()
        count = count + 1
        ibScoreLabelInMainView.text = "\(count)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "endGame"{
            if let destVC = segue.destination as? EndViewController{
                destVC.endCount = count
            }
        }
    }
    //override func performSegue(withIdentifier identifier: String, sender: Any?) { }
    
}
