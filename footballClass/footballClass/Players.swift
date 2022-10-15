//
//  players.swift
//  footballClass
//
//  Created by Furkan Cemal Çalışkan on 10.08.2022.
//

import Foundation

enum PlayerType {
    
    case GoalKeeper
    case Defence
    case Mid
    case Striker
    
}

class Players {
    
    var name : String
    var age : Int
    var position : PlayerType
    
    init(nameInit:String,ageInit:Int,positionInit:PlayerType) { //Constructor in Swift
        name = nameInit
        age = ageInit
        position = positionInit
    }
    
    func shoot() {
        
        print("Goal!")
        
    }
    
    private func test() {
        
        
        
    }
    
}
