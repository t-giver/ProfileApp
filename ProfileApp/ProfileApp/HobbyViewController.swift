//
//  HobbyViewController.swift
//  ProfileApp
//
//  Created by spark-05 on 2024/05/20.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    //初期値を設定。　かつ表示させる番号をvarで可変設定
    var dispImageNo = 0
    
    //配列を使って、アセッツに登録している写真のファイル名を設定する
    var imageNameArray = [
        "Hobby_mainimg_1",
        "Hobby_mainimg_2",
        "Hobby_mainimg_3",
        "Hobby_mainimg_4",
        "Hobby_mainimg_5"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imagename = imageNameArray[dispImageNo]    //配列の[初期値]をimagenameを代入
        if let image = UIImage(named: imagename){       //UIImageに（namedに記述されたファイル）を表示させるコード。今回は初期値を代入した
            imageView.image = image                     //imagenameを使用。ifはもしバグで読み込めなくてもアプリを落とさないため。そしてimageViewのimageに、配列の初期値に設定したimage(UIImage)を表示
        }
    }
    
    func displayImage() {
        // dispImageNoが有効な範囲内か確認
        if dispImageNo < 0 {
            dispImageNo = imageNameArray.count - 1
        } else if dispImageNo >= imageNameArray.count {
            dispImageNo = 0
        }
        let name = imageNameArray[dispImageNo]
        let image = UIImage(named: name)
        if let newImage = UIImage(named: name) {
            // アニメーションブロックを使用して画像の変更をアニメーション化
            UIView.transition(with: imageView, duration: 0.5, options: [.transitionCrossDissolve], animations: {
                self.imageView.image = newImage
            }, completion: nil)
        }
    }
    
    @IBAction func prevButton(_ sender: Any) {
        dispImageNo -= 1
        displayImage()
    }
    
    @IBAction func nextButton(_ sender: Any) {
        dispImageNo += 1
        displayImage()
    }
}
