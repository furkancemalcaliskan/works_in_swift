//
//  MusicianStruct.swift
//  AdvancadSwiftProject
//
//  Created by Furkan Cemal Çalışkan on 24.09.2022.
//

import Foundation

struct MusicianStruct {
    
    var name : String
    var age : Int
    var instrument : String
    
    mutating func happyBirthday() {
        
        self.age += 1
        
    }
    
}
