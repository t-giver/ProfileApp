//
//  ViewController.swift
//  ProfileApp
//
//  Created by spark-05 on 2024/05/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let splashImage = UIImage(named: "splash_img")
        let splashImageView = UIImageView(image: splashImage)
        splashImageView.frame = self.view.bounds
        self.view.addSubview(splashImageView)
        
        UIView.animate(withDuration: 1.0, animations: {
            splashImageView.alpha = 0
        }) { (completed) in
            splashImageView.removeFromSuperview()
        }
        splashImageView.contentMode = .scaleAspectFit
    }
    
    
}

