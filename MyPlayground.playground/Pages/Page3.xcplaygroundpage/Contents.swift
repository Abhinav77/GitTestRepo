//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


enum CardSuit: String {
    case Spade = "♠️"
    case Heart = "♥️"
    case Diamond = "♦️"
    case Club = "♣️"
}

let cardsArray: [[CardSuit : String]]

cardsArray = [
    [.Spade: "Ace"],
    [.Heart: "King"],
    [.Diamond: "Queen"],
    [.Club: "Jack"]
]

for card in cardsArray {
    for (suit, value) in card {
        print("Value of card \(suit) is \(value)")
    }
}


/*
    Associating values in Enumerations
*/

class Person {
    let lastName: String?
    
    init(lastName: String) {
        self.lastName = lastName
    }
}

enum Marine {
    case Master_Sergeant (Person)
    case Sergeant_Major (Person)
    case Sergeant_Major_Of_Marine_Cops (Person)
}


extension String {
    func appendStrings(string: String..., usingSeparator separator: String = " ") -> String {
        let stringArray = [self] + string;
        return stringArray.joinWithSeparator(separator)
    }
}

"a".appendStrings("b", "c", "d", "e", usingSeparator: "--")

struct PersonData {
    let firstName : String
    let middleName : String
    let lastName : String
}


extension PersonData : CustomStringConvertible {
    var fullName : String {
        return firstName.appendStrings(middleName, lastName)
    }
    
    init?(fullName: String) {
//        let splittedString = fullName.characters.split(" ").map(String.init)
        let splittedString = fullName.componentsSeparatedByString(" ")
        
        guard splittedString.count == 3 else {
            return nil
        }
        
        self.init(firstName: splittedString[0], middleName: splittedString[1], lastName: splittedString[2])
    }
    
    var description : String {
        return "Name = \(fullName)"
    }
}

let abhinavGupta = PersonData.init(firstName: "Abhinav", middleName: "Kumar", lastName: "Gupta")

abhinavGupta.fullName

print(abhinavGupta)

if let royMathew = PersonData.init(fullName: "Roy S Mathew") {
    royMathew.firstName
    royMathew.middleName
    royMathew.lastName
}


protocol Edible {
    var name : String {get}
    var caloriesPerServing : Int {get}
}

struct Ingredient : Edible, CustomStringConvertible {
    let name : String
    var caloriesPerServing : Int
    
    var description: String {
        return "\(name) - \(caloriesPerServing) calroies per serving"
    }
    
    init(_ name:String, _ caloriesPerServing: Int) {
        self.name = name
        self.caloriesPerServing = caloriesPerServing
    }
}

let chocoloateChips = Ingredient.init("Chocolate", 350)
let granola = Ingredient("Granola", 200)
let nuts = Ingredient("Nuts", 250)

struct TrailMix<T where T: Edible, T: CustomStringConvertible> : CustomStringConvertible {
    let ingredients : [T]
    
    var description : String {
        var totalCalPerServing = 0.0
        var combinedDescription = ""
        
        ingredients.forEach{item in
            totalCalPerServing += Double(item.caloriesPerServing) / Double(ingredients.count)
            print("\(ingredients.count)")
            combinedDescription += "\t\(item.description)\n"
        }
        
        let combinedDesc = String(format: "Trail mix, calories per serving:%0.2f \nIngredients:\n\(combinedDescription)", totalCalPerServing)
        
        return combinedDesc
    }
}

let trailMix = TrailMix(ingredients: [chocoloateChips, granola, nuts])

print(trailMix)












