//
//  main.swift
//  swiftWorkshop
//
//  Created by Furkan Cemal Çalışkan on 15.07.2022.
//

import Foundation

//optionals : ? and !

//var name  : String?

//print(name?.uppercased()) //nil dondurur, bos demektir.

//print(name!.uppercased()) //unlem, kesinlikle bu degisken tanimli demektir, tanimli degilse program coker.

 var myAge = "f"

//var myInteger = Int(myAge)! * 5
//print(myInteger)

var myInteger1 = (Int(myAge) ?? 0) * 5
print(myInteger1)

if let myNumber = Int(myAge) {
    print(myNumber * 5)
} else {
    print("wrong input")
}

