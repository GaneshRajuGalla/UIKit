//
//  ViewController.swift
//  Parallax
//
//  Created by Ganesh on 05/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backGroundMotion()
    }

    
    private func backGroundMotion(){
        let min = -30.0
        let max = 30.0
        
        let xAxis = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        xAxis.minimumRelativeValue = min
        xAxis.maximumRelativeValue = max
        
        let yAxis = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        yAxis.minimumRelativeValue = min
        yAxis.maximumRelativeValue = max
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [xAxis,yAxis]
        
        imageView.addMotionEffect(group)
    }
}

