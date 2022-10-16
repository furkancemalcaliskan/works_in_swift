//
//  SuperHero.swift
//  AsyncImage
//
//  Created by Furkan Cemal Çalışkan on 16.10.2022.
//

import Foundation

struct SuperHero : Identifiable {
    var id = UUID()
    var name : String
}

let superman = SuperHero(name: "Superman")
let batman = SuperHero(name: "Batman")
let aquaman = SuperHero(name: "Aquaman")
let wonderwoman = SuperHero(name: "Wonder Woman")
let ironman = SuperHero(name: "Iron Man")
let spiderman = SuperHero(name: "Spiderman")
let antman = SuperHero(name: "Antman")
let venom = SuperHero(name: "Venom")
let flash = SuperHero(name: "Flash")
let joker = SuperHero(name: "Joker")
let greenlantern = SuperHero(name: "Green Lantern")
let greenarrow = SuperHero(name: "Green Arrow")
let captainamerica = SuperHero(name: "Captain America")
let doctorstrange = SuperHero(name: "Doctor Strange")
let thor = SuperHero(name: "Thor")
let loki = SuperHero(name: "Loki")
let deadpool = SuperHero(name: "Deadpool")
let hulk = SuperHero(name: "Hulk")

let superHeroArray = [superman, batman, aquaman, wonderwoman, ironman, spiderman, antman, venom
,flash, joker, greenlantern, greenarrow, captainamerica, doctorstrange, thor, loki, deadpool, hulk]
