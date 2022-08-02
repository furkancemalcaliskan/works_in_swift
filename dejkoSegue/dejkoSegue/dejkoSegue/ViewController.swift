//
//  ViewController.swift
//  dejkoSegue
//
//  Created by Furkan Cemal Çalışkan on 22.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    //Lifecycle of Program
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        userName = "Your Name: \(firstTextField.text!)"
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }

}

