//
//  ViewController.swift
//  yearReminder
//
//  Created by Furkan Cemal Çalışkan on 21.07.2022.
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var event: UITextField!
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedEvents = UserDefaults.standard.object(forKey: "event")
        
        let savedYears = UserDefaults.standard.object(forKey: "year")
        
        if let eventControl = savedEvents as? String {
            eventLabel.text = "Event: \(eventControl)"
        }
        
        if let yearControl = savedYears as? String {
            yearLabel.text = "Year: \(yearControl)"
        }
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        UserDefaults.standard.set(event.text!, forKey: "event")
        UserDefaults.standard.set(year.text!, forKey: "year")
        
        eventLabel.text = "Event: \(event.text!)"
        yearLabel.text = "Year: \(year.text!)"
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        
        let savedEvent = UserDefaults.standard.object(forKey: "event")
        let savedYear = UserDefaults.standard.object(forKey: "year")
        
        if (savedEvent as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "event")
        }
        
        if (savedYear as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "year")
        }
    }
}

