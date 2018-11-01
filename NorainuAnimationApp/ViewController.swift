//
//  ViewController.swift
//  NorainuAnimationApp
//
//  Created by norainu on 2018/11/01.
//  Copyright © 2018 norainu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBOutlet weak var targetView: UIView!

  @IBAction func tapStartAnimation(_ sender: Any) {
    let animation = CABasicAnimation(keyPath: "cornerRadius")
    animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.default)
    animation.fromValue = 0
    animation.toValue = 50
    animation.duration = 1
    targetView.layer.add(animation,forKey: "cornerRadius")
    targetView.layer.cornerRadius = 20
    
  }

}

