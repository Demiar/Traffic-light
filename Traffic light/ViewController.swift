//
//  ViewController.swift
//  Traffic light
//
//  Created by Алексей on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var changeLightButton: UIButton!
    
    var activeLight = 0
    
    
    override func viewDidLoad() {
        redLight.layer.cornerRadius = redLight.frame.size.width/2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width/2
        greenLight.layer.cornerRadius = greenLight.frame.size.width/2
    }

    @IBAction func changeLight(_ sender: UIButton) {
        
        if changeLightButton.titleLabel!.text == "START" {
            changeLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch activeLight {
        case redLight.tag:
            activeLight = yellowLight.tag
            redLight.alpha = 0.5
            yellowLight.alpha = 1
        case yellowLight.tag:
            activeLight = greenLight.tag
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
        default:
            activeLight = redLight.tag
            redLight.alpha = 1
            greenLight.alpha = 0.5
        }
        
    }
}

