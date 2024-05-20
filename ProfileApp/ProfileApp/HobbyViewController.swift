//
//  HobbyViewController.swift
//  ProfileApp
//
//  Created by spark-05 on 2024/05/20.
//

import UIKit

class HobbyViewController: UIViewController {
    @IBOutlet weak var hobby_img1: UIImageView!
    @IBOutlet weak var hobby_img2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if let image1 = UIImage(named: "image1"),
           let image2 = UIImage(named: "image2") {
            hobby_img1.animationImages = [image1, image2]
            hobby_img2.animationImages = [image1, image2]
            
            // アニメーションの設定
            hobby_img1.animationDuration = 1.0 // 1秒間で1回のアニメーション
            hobby_img1.animationRepeatCount = 0 // 無限にループ
            
            hobby_img2.animationDuration = 1.0
            hobby_img2.animationRepeatCount = 0
            
            // アニメーションの開始
            hobby_img1.startAnimating()
            hobby_img2.startAnimating()
        }
        
        
    }
    
    @IBAction func prevButton(_ sender: Any) {
        UIView.animate(withDuration: 0.5, animations: {
            self.hobby_img1.frame.origin.x -= self.view.frame.width
            self.hobby_img2.frame.origin.x -= self.view.frame.width
        }) { _ in
            self.hobby_img1.frame.origin.x = self.view.frame.width
            self.hobby_img2.frame.origin.x = self.view.frame.width
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        UIView.animate(withDuration: 0.5, animations: {
            self.hobby_img1.frame.origin.x += self.view.frame.width
            self.hobby_img2.frame.origin.x += self.view.frame.width
        }) { _ in
            self.hobby_img1.frame.origin.x = 0
            self.hobby_img2.frame.origin.x = 0
        }
    }
}
