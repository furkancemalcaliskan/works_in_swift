//
//  ViewController.swift
//  gestureRecognizeApp
//
//  Created by Furkan Cemal Çalışkan on 28.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dejkoLabel: UILabel!
    var isFurkan = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRec = UITapGestureRecognizer(target: self, action: #selector(picChanger))
        
        imageView.addGestureRecognizer(gestureRec)
    }
    
    @objc func picChanger() {
        
        if isFurkan == true {
            
            imageView.image = UIImage(named: "dejkoveci")
            dejkoLabel.text = "dejkoveci logo"
            isFurkan = false
        } else {
            
            imageView.image = UIImage(named: "furkan")
            dejkoLabel.text = "Furkan"
            isFurkan = true
        }
        

        
    }

}

