//
//  StarPlayer.swift
//  footballClass
//
//  Created by Furkan Cemal Çalışkan on 11.08.2022.
//

import Foundation

class StarPlayer : Players {
    
    func superShoot() {
        
        print("Hat-trick!")
        
    }
    
    override func shoot() {
        
        super.shoot()
        print("That's Wonderful!")
        
    }
    
}
