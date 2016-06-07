//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

class Person {
    var pet: Pet?
}

class Pet {
    var name: String
    
    var favoriteToy: Toy?
    
    init(name: String) {
        self.name = name
    }
}

class Toy {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let favToy1 = Toy(name: "Jolly");

let pet1 = Pet(name: "Tommy")
pet1.favoriteToy = favToy1

var person1 = Person()
person1.pet = pet1

if let favToy = person1.pet?.favoriteToy?.name {
    print(favToy)
} else {
    print("No fav pet")
}

//: [Next](@next)
