//
//  ViewController.swift
//  firstApp
//
//  Created by Furkan Cemal Çalışkan on 6.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonClicked(_ sender: Any) {
        imageView.image = UIImage(named: "oriental2")
    }
    
}

