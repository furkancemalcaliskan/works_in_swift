//
//  ViewController.swift
//  Tom&JerryBook
//
//  Created by Furkan Cemal Çalışkan on 15.08.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var myCharacters = [Cartoon]()
    var chosenCharacter : Cartoon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Characters
        
        let tom = Cartoon(nameInit: "Tom", imageInit: UIImage(named: "tom.jpg")!, animalNameInit: "Cat")
        let jerry = Cartoon(nameInit: "Jerry", imageInit: UIImage(named: "jerry.jpg")!, animalNameInit: "Mouse")
        let killer = Cartoon(nameInit: "Killer", imageInit: UIImage(named: "killer.jpg")!, animalNameInit: "Dog")
        
        myCharacters.append(tom)
        myCharacters.append(jerry)
        myCharacters.append(killer)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCharacters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myCharacters[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCharacter = myCharacters[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            
            let destinationVC = segue.destination as! DetailsViewController
            
            destinationVC.selectedCharacter = chosenCharacter
            
        }
    }
    


}

