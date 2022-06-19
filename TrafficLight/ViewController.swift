//
//  ViewController.swift
//  TrafficLight
//
//  Created by Асанкул Садыков on 19/6/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var startButton: UIButton!
    @IBOutlet var lightsViews: [UIView]!
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.setTitle("START", for: .normal)
        startButton.layer.cornerRadius = 10
        
        for light in lightsViews {
            light.layer.cornerRadius = light.frame.size.width/2
            light.clipsToBounds = true
            light.layer.borderColor = UIColor.darkGray.cgColor
            light.layer.borderWidth = 2.0
            light.alpha = 0.4
        }
    }

   
  
    @IBAction func startButtonTapped() {
        startButton.setTitle("NEXT", for: .normal)
        counter += 1
        switch counter {
        case 1:
            redLightView.alpha = 1
            greenLightView.alpha = 0.4
        case 2:
            yellowLightView.alpha = 1
            redLightView.alpha = 0.4
        case 3:
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.4
            counter = 0
        default:
            print("Error")
        }
    }
    
}

