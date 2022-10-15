//
//  ViewController.swift
//  dejkObjectWithCode
//
//  Created by Furkan Cemal Çalışkan on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var testLabel = UILabel()
    var dejkoButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        testLabel.text = "dejkoTest Label"
        testLabel.textAlignment = .center
        testLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50 / 2, width: width * 0.8, height: 50)
        view.addSubview(testLabel)
        
        
        dejkoButton.setTitle("My Button", for: UIControl.State.normal)
        dejkoButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        dejkoButton.frame = CGRect.init(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100)
        view.addSubview(dejkoButton)
        
        dejkoButton.addTarget(self, action: #selector(ViewController.dejkoAction), for: UIControl.Event.touchUpInside)
        

    }
    @objc func dejkoAction() {
        testLabel.text = "Tapped the Button"
    }
}

