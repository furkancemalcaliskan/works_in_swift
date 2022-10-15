//
//  main.swift
//  footballClass
//
//  Created by Furkan Cemal Çalışkan on 10.08.2022.
//

import Foundation

let ronaldo = Players(nameInit: "cristiano ronaldo", ageInit: 40, positionInit: .Striker)

print(ronaldo.name)
print(ronaldo.age)
print(ronaldo.position)

ronaldo.shoot()

let messi = StarPlayer(nameInit: "lionel messi", ageInit: 40, positionInit: .Striker)

messi.shoot()
messi.superShoot()
