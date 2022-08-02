//
//  SecondViewController.swift
//  dejkoSegue
//
//  Created by Furkan Cemal Çalışkan on 22.07.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName
    }

}
