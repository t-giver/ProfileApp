//
//  InquiryViewController.swift
//  ProfileApp
//
//  Created by spark-05 on 2024/05/20.
//

import UIKit

class InquiryViewController: UIViewController,  UITextFieldDelegate {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var mailText: UITextField!
    @IBOutlet weak var inquiryText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameText.delegate = self
        mailText.delegate = self
        inquiryText.delegate = self
        // タップジェスチャーを追加して、背景をタップした時にキーボードを閉じる
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // キーボードを閉じる
        return true
    }
    
    @IBAction func actionButton(_ sender: Any) {
        dismissKeyboard() // ボタンを押した時にもキーボードを閉じる
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let confirmationInquiryViewController = segue.destination as? ConfirmationInquiryViewController {
            if let name = nameText.text, let mail = mailText.text, let inquiry = inquiryText.text {
                confirmationInquiryViewController.nameTextField = name
                confirmationInquiryViewController.mailTextField = mail
                confirmationInquiryViewController.inquiryTextField = inquiry
            }
        }
    }
    
    
}
