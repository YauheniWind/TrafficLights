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
  
  var traffincCounter: Int = 0
  
  @IBOutlet weak var startNextButtonOutlet: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    redView.layer.cornerRadius = 35
    yellowView.layer.cornerRadius = 35
    greenView.layer.cornerRadius = 35
    
    redView.alpha = 0.1
    yellowView.alpha = 0.1
    greenView.alpha = 0.1
    
    
    startNextButtonOutlet.layer.cornerRadius = 20
  }


  @IBAction func startNextPressedButton(_ sender: UIButton) {
    sender.setTitle("Next", for: .normal)
    
    traffincCounter += 1
    
    chengeAlpha(firstView: redView, secondView: yellowView, thierdView: greenView)
  }
  
  func chengeAlpha(firstView: UIView, secondView: UIView, thierdView: UIView) {
    
    switch traffincCounter {
    case 1:
      firstView.alpha = 1
      secondView.alpha = 0.1
      thierdView.alpha = 0.1
    case 2:
      firstView.alpha = 0.1
      secondView.alpha = 1
      thierdView.alpha = 0.1
    case 3:
      firstView.alpha = 0.1
      secondView.alpha = 0.1
      thierdView.alpha = 1
      traffincCounter = 0
    default:
      print("Something is wrong")
    }
    
  }
}

