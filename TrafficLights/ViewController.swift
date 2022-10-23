//
//  ViewController.swift
//  TrafficLights
//
//  Created by Евгений  Гравдин  on 20/10/2022.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var redView: UIView!
  
  
  
  @IBOutlet weak var yellowView: UIView!
  
  @IBOutlet weak var greenView: UIView!
  
  @IBOutlet weak var startNextButtonOutlet: UIButton!
  
  var trefficCounter: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    redView.layer.cornerRadius = redView.frame.height / 2
    yellowView.layer.cornerRadius = yellowView.frame.height / 2
    greenView.layer.cornerRadius = greenView.frame.height / 2
    
    redView.alpha = 0.1
    yellowView.alpha = 0.1
    greenView.alpha = 0.1
    
    startNextButtonOutlet.layer.cornerRadius = 10
    
  }
  
  @IBAction func startNextButtonPressed(_ sender: UIButton) {
    sender.setTitle("NEXT", for: .normal)
    chengingTrafficLights(firstLight: redView, secondLight: yellowView, thierdLight: greenView)
  }
  
  func chengingTrafficLights(firstLight: UIView, secondLight: UIView, thierdLight: UIView) {
    trefficCounter += 1
    
    switch trefficCounter {
    case 1:
      firstLight.alpha = 1
      secondLight.alpha = 0.1
      thierdLight.alpha = 0.1
    case 2:
      firstLight.alpha = 0.1
      secondLight.alpha = 1
      thierdLight.alpha = 0.1
    case 3:
      firstLight.alpha = 0.1
      secondLight.alpha = 0.1
      thierdLight.alpha = 1
      trefficCounter = 0
    default:
      print("Someting is wrong")
    }
  }
  
}
