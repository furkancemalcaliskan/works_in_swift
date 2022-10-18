//
//  Cat.swift
//  NavigationSwiftUI
//
//  Created by Furkan Cemal Çalışkan on 18.10.2022.
//

import Foundation

struct Cat : Identifiable, Hashable {
    
    var id = UUID()
    let name : String
    
}

let cats : [Cat] = [Cat(name: "Pamuk"), Cat(name: "Boncuk"), Cat(name: "Duman"), Cat(name: "Garfield")]
