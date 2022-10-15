//
//  ViewController.swift
//  notificationTest
//
//  Created by Furkan Cemal Çalışkan on 27.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var verifyPassField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signUpButtonClicked(_ sender: Any) {
        
        if usernameField.text == "" {
            
            showAlertMessage(dejkoTitle: "Attention", dejkoMessage: "You must fill the username blank")
            
        } else if passwordField.text == "" {
            
            showAlertMessage(dejkoTitle: "Attention", dejkoMessage: "You must fill the password blank")
            
        } else if passwordField.text != verifyPassField.text {
            
            showAlertMessage(dejkoTitle: "Attention", dejkoMessage: "You must verify your password")
            
        } else {
            showAlertMessage(dejkoTitle: "Success", dejkoMessage: "Welcome to DejkoSystem")
        }
        
    }
    
    func showAlertMessage(dejkoTitle: String , dejkoMessage: String) {
        
        let errorMessage = UIAlertController(title: dejkoTitle, message: dejkoMessage, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        errorMessage.addAction(okButton)
        self.present(errorMessage, animated: true, completion: nil)
        
    }
    
}

