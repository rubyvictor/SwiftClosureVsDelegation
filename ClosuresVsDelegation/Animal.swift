//
//  Animal.swift
//  ClosuresVsDelegation
//
//  Created by Victor Lee on 16/4/19.
//  Copyright © 2019 VictorLee. All rights reserved.
//

import Foundation

struct Animal {
    
    let emoji: String
    let name: String
    let noise: String
}

extension Animal {
    static var dog = Animal(emoji: "🐶", name: "Dog", noise: "Bark")
    static var cat = Animal(emoji: "🐱", name: "Cat", noise: "Meow")
    static var snake = Animal(emoji: "🐍", name: "Snake", noise: "Hiss")
    static var pig = Animal(emoji: "🐷", name: "Pig", noise: "Oink")
    static var lion = Animal(emoji: "🦁", name: "Lion", noise: "Roar")
}
