//
//  ViewController.swift
//  AnimationWeather
//
//  Created by tw on 2022/11/25.
//

import UIKit

class ViewController: UIViewController {

    private let gradientView: UIView = {
        $0.backgroundColor = .white
        return $0
    }(UIView())
    
    private let setGradient: CAGradientLayer = {
        $0.colors = [UIColor.white.cgColor, UIColor.orange.cgColor]
        $0.locations = [0.0, 1.0]
        $0.startPoint = CGPoint(x: 0.5, y: 0.0)
        $0.endPoint = CGPoint(x: 0.5, y: 1.0)
        return $0
    }(CAGradientLayer())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUp()
        setConstraint()
    }


    private func setUp() {
        
        self.view.addSubview(gradientView)
        gradientView.layer.addSublayer(setGradient)
        setGradient.frame = view.bounds
        
    }
    
    private func setConstraint() {
        
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        gradientView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        gradientView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        gradientView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

