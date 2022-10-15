//
//  main.swift
//  ProtocolSwiftProject
//
//  Created by Furkan Cemal Çalışkan on 24.09.2022.
//

import Foundation

protocol Running {
    
   func myRun()
    
}

class Animal {
    
    func running(){
        
        print("running")
        
    }
    
}

class Dog : Animal {
    
    
    
}

let barley = Dog()
barley.running()

class Cat : Animal {
    
    
}

let cat = Cat()
cat.running()

class Turtle : Animal {
    
    
}

let leonardo = Turtle()
leonardo.running()

struct Bird : Running {
    func myRun() {
        print("running")
    }
    
    
}

