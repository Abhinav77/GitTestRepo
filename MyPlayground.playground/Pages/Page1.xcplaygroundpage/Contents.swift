//: Playground - noun: a place where people can play

/*

## Header 2

*/

import UIKit
import Foundation

var str = "Hello, playground"

for i in 0..<64 {
    var test = sin(Double(i) * 100)
}

var str1 = "Another"

func myFirstFunc() {
    print(str, str1, "\(2*3)", "\(__FUNCTION__)", "Line\(__LINE__)", "\(__FILE__)", separator: "_", terminator: "\n")
}

var `class` = "My Class"
`class` = "test"
print(`class`)

myFirstFunc()


let umlaught = "\u{0067}\u{308}"

// Type Alias

typealias MyInt = UInt64

let x = MyInt.min
let y = MyInt.max

var test : String!
test = "Some XYZ."

print(test, "a\0")

test[test.startIndex.successor()]
test[test.endIndex.predecessor()]
test[test.startIndex.advancedBy(5)]
test[test.endIndex.advancedBy(-5)]

test.removeAtIndex(test.endIndex.predecessor())
test.insert("!", atIndex: test.endIndex)

let range = test.startIndex.advancedBy(5)..<test.endIndex.advancedBy(-1)
test.replaceRange(range, with: "UVW")


var array: [Any]
array = ["1", 2, 3]

for a in array {
    print(a)
}

var firstA : [String?]? = ["Kumar", "Abhinav", "Gupta"]
var secondA = firstA![0..<2].sort(>)

var intA = [11, 2, 3]
intA[0] += 10
intA.sortInPlace()
print(intA)

var nestedArray: [Any] = [firstA, intA]
//let value = nestedArray[1]?[0]

print(nestedArray.flatMap { ($0)})


var arr1: Set = [5, 1, 3, 7, 4, 2, 6]

var arr2: Set = [5, 2, 6]

//arr1.sortInPlace()

print(arr1)

arr2.isSubsetOf(arr1)
arr2.isStrictSubsetOf(arr1)
arr2.isDisjointWith(arr1)

var arr3 = [5, 1, 3, 7, 4, 2, 6]

arr3.reduce(0, combine: +) / arr3.count

let t1 = 4.1
let i1 = 2

t1 / 2

10/3.0

var i2 = UInt8.max
i2 = i2 &+ 1
i2 = i2 &- 1
i2 = i2 &* 2


let phrases = ["A couple", "Another Second", "Third one"]

for index in phrases.enumerate() {
    print("For \(index.0) you can say \(index.1)")
}

for _ in 1...2 {
    let random = arc4random_uniform(11)
    
    if (random == 10) {
        print("Got it!")
    }
    
}

if #available(iOS 9.2, *) {
    print("Avilable");
} else {
    print("Not Avilable");
}

var date1 = NSDate()


let firstInt: Int? = nil

if case let myFirstInt? = firstInt where myFirstInt > 1 {
    print("Valid")
} else {
    print("Invalid")
}


/**
 This is a test function
 - parameter hello Hello String **(Very Good)** This defaults to `meanScore`
 */
@available(*, introduced=6.0,deprecated=9.3)
func testFunc(hello: String) {
    defer {
        print("Execute me in very end")
    }
    
    defer {
        print("Execute me in second last")
    }
    
    defer {
        print("Execute me in the end")
    }
    
    for i in (1...10).reverse() where i > 5 {
        print(i)
    }
}

testFunc("test")


//test.stringByReplacingOccurrencesOfString(".", withString: "!")


//: [Next](@next)


func addLineTime(product: String, price: Double)(quantity: Double) -> String {
    guard price < 1000 else {
        return ""
    }
    
    let discountMultiplier: Double
    
    switch quantity {
    case 1...10:
        discountMultiplier = 1.0
    case 11...20:
        discountMultiplier = 0.9
    default:
        discountMultiplier = 0.8
    }
    
    let message = String(format: "%.0f of \(product) at $%.2f discount each. Total Price is %.2f", quantity, price - price * discountMultiplier, quantity * price * discountMultiplier)
    
    return message
}

let productAdd = addLineTime("T-Shirt", price: 114.90)
var lineItem = productAdd(quantity: 11)
print(lineItem)

