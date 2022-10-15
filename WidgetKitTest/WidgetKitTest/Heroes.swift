//
//  Heroes.swift
//  WidgetKitTest
//
//  Created by Furkan Cemal Çalışkan on 10.10.2022.
//

import Foundation

struct Heroes : Identifiable, Codable {
    
    let image : String
    let name : String
    let realName : String
    
    var id : String {image}
    
}

let superman = Heroes(image: "superman", name: "Superman", realName: "Clark Kent")
let ironman = Heroes(image: "ironman", name: "Ironman", realName: "Tony Stark")
let spiderman = Heroes(image: "spiderman", name: "Spiderman", realName: "Peter Parker")
