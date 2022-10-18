//
//  Dog.swift
//  NavigationSwiftUI
//
//  Created by Furkan Cemal Çalışkan on 18.10.2022.
//

import Foundation

struct Dog : Identifiable, Hashable {
    
    var id = UUID()
    let name : String
    
}

let dogs : [Dog] = [Dog(name: "Karabas"), Dog(name: "Sansli"), Dog(name: "Pasa"), Dog(name: "Sari")]
