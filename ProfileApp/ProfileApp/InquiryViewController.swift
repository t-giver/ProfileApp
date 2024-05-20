//
//  InquiryViewController.swift
//  ProfileApp
//
//  Created by spark-05 on 2024/05/20.
//

import UIKit

class InquiryViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var mailText: UITextField!
    @IBOutlet weak var inquiryText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func actionButton(_ sender: Any) {

        
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
