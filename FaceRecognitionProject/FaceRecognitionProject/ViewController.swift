//
//  ViewController.swift
//  FaceRecognitionProject
//
//  Created by Furkan Cemal Çalışkan on 7.09.2022.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }
    @IBAction func signInButtonClicked(_ sender: Any) {
        
        let authContext = LAContext()
        
        var error : NSError?
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Is it you?") { success, error in
                if success == true {
                    //successful
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "toSecondVC", sender: nil)
                    }
                    
                } else {
                    DispatchQueue.main.async {
                        self.labelText.text = "Error"
                    }
                    
                    
                }
            }
            
        }
        
    }
    

}

