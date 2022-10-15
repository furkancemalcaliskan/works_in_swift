//
//  DetailsViewController.swift
//  landmarkBook
//
//  Created by Furkan Cemal Çalışkan on 08.08.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var landmarkImageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLanmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        landmarkImageView.image = selectedLanmarkImage
    }
    



}
