//
//  ConfirmationInquiryViewController.swift
//  ProfileApp
//
//  Created by spark-05 on 2024/05/20.
//

import UIKit

class ConfirmationInquiryViewController: UIViewController {
    
    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var mailField: UILabel!
    @IBOutlet weak var inquiryField: UILabel!
    
    var nameTextField: String = ""
    var mailTextField: String = ""
    var inquiryTextField: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.text = nameTextField
        mailField.text = mailTextField
        inquiryField.text = inquiryTextField
    }
    
    @IBAction func completionButton(_ sender: Any) {
    }
}
