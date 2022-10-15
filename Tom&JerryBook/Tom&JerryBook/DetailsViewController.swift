//
//  DetailsViewController.swift
//  Tom&JerryBook
//
//  Created by Furkan Cemal Çalışkan on 12.08.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    
    var selectedCharacter : Cartoon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedCharacter?.name
        detailLabel.text = selectedCharacter?.animalName
        imageView.image = selectedCharacter?.image
    }
    



}
